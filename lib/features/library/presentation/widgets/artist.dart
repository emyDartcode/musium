import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/core/cacheimage.dart';
import 'package:musium/core/color.dart';
import 'package:musium/features/library/domain/entity/library_entity.dart';
import 'package:musium/features/library/presentation/provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ArtistWidget extends ConsumerWidget {
  const ArtistWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reader = ref.watch(getArtistsProvider);

    return RefreshIndicator(
      onRefresh: () => ref.refresh(getArtistsProvider.future),
      
      child: Stack(
        children: [
          if(reader.hasValue)
            ArtistWhenData(data: reader.requireValue),
          
          if(reader.isLoading && !reader.hasValue)
            ArtistShimmer(),
          
          if(reader.hasError && !reader.hasValue)
            const ArtistWhenError(),
          
          // if(reader.hasError && reader.hasValue)
            //Error banner
        ],
      ),
    );
  }
}

//When Data
class ArtistWhenData extends StatefulWidget {
  const ArtistWhenData({
    super.key,
    required this.data
  });

  final List<ArtistEntity> data;

  @override
  State<ArtistWhenData> createState() => _ArtistWhenDataState();
}

class _ArtistWhenDataState extends State<ArtistWhenData> with AutomaticKeepAliveClientMixin{
  
  final ValueNotifier<String> sortOrder = ValueNotifier('Recently played');

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final width = MediaQuery.of(context).size.width;
    
    return CustomScrollView(
      slivers: [
        
        //Sort by
        widget.data.isEmpty
          ? const SliverToBoxAdapter(
              child: SizedBox.shrink()
            )

          :  SliverToBoxAdapter(
          child: Row(
            children: [
              const Text(
                'Sort by'
              ),
              const Spacer(),
              
              PopupMenuButton(
                onSelected: (value) {
                  sortOrder.value = value;
                },
                itemBuilder: (BuildContext context) {
                  return SortbyOrder.values.map(
                    (value){
                      return PopupMenuItem(
                        value: value.getSortOrder(),
                        child: Text(value.getSortOrder())
                      );
                    }
                  ).toList();
                },

                child: ValueListenableBuilder(
                  valueListenable: sortOrder, 
                  builder: (context, value, _){
                    return Text(
                      value,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColor.primaryColor
                      )
                    );
                  }
                ),
              ),

              Icon(
                Icons.swap_vert,
                size: 20,
                color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
              )
              
            ],
          )
        ),
        
        widget.data.isEmpty

          //Display when empty
          ? const SliverToBoxAdapter(
              child: SizedBox(
                height: 500,
                child: ArtistWhenEmpty()
              ),
            )

          //Image and Artist name
          : SliverList.builder(
          itemCount: widget.data.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0),
              child: InkWell(
                onTap: () {
                  // TODO: Function for each artist
                },
                child: Row(
                  spacing: 15,
                  children: [
                    //Image
                    ClipOval(
                      child: CacheImage(
                        imageUrl: widget.data[index].imageUrl, 
                        height: 50, 
                        width: 50,
                      )
                    ),
                
                    //Artist name, number of songs & album
                    SizedBox(
                      width: width * 0.66,
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                
                          //Artist name
                          Text(
                            widget.data[index].artist
                          ),
                
                          //Number of song & album
                          SizedBox(
                            width: width * 0.65,
                            child: Row(
                              children: [
                                //Number of Albums
                                Text(
                                  '${widget.data[index].numOfAlbum} Albums',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
                                  )
                                ),
                                const SizedBox( width: 5),
                
                                ///Number of Songs
                                Text(
                                  '${widget.data[index].numOfSongs} Songs',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
                                  )
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                
                
                  ],
                ),
              ),
            );
          }
        )
      ],
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}


///When empty
class ArtistWhenEmpty extends StatelessWidget {
  const ArtistWhenEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: .min,
        children: [
          Icon(
            Icons.music_off_sharp,
            size: 60,
            color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
          ),
          Text(
            'No Artist found',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
            )
          )

        ],
      ),
    );
  }
}


///Shimmer
class ArtistShimmer extends StatelessWidget {
  ArtistShimmer({super.key});

  final ValueNotifier<String> sortOrder = ValueNotifier('Recently played');
  final List<ArtistEntity> data = List.filled(7, ArtistEntity(
    imageUrl: 'ashdfdia', 
    artist: 'Kendrick Lamar', 
    numOfAlbum: 14, 
    numOfSongs: 29
  ));

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    return Skeletonizer(
      child: CustomScrollView(
        slivers: [
          
          //Sort by
          SliverToBoxAdapter(
            child: Row(
              children: [
                const Text(
                  'Sort by'
                ),
                const Spacer(),
                
                PopupMenuButton(
                  onSelected: (value) {
                    sortOrder.value = value;
                  },
                  itemBuilder: (BuildContext context) {
                    return SortbyOrder.values.map(
                      (value){
                        return PopupMenuItem(
                          value: value.getSortOrder(),
                          child: Text(value.getSortOrder())
                        );
                      }
                    ).toList();
                  },
      
                  child: ValueListenableBuilder(
                    valueListenable: sortOrder, 
                    builder: (context, value, _){
                      return Text(
                        value,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColor.primaryColor
                        )
                      );
                    }
                  ),
                ),
      
                Icon(
                  Icons.swap_vert,
                  size: 20,
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
                )
                
              ],
            )
          ),
      
          //Image and Artist name
          SliverList.builder(
            itemCount: data.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  spacing: 15,
                  children: [
                    //Image
                    ClipOval(
                      child: CacheImage(
                        imageUrl: data[index].imageUrl, 
                        height: 50, 
                        width: 50,
                      )
                    ),
      
                    //Artist name, number of songs & album
                    SizedBox(
                      width: width * 0.66,
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
      
                          //Artist name
                          Text(
                            data[index].artist
                          ),
      
                          //Number of song & album
                          SizedBox(
                            width: width * 0.65,
                            child: Row(
                              children: [
                                //Number of Albums
                                Text(
                                  '${data[index].numOfAlbum} Albums',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
                                  )
                                ),
                                const SizedBox( width: 5),
      
                                ///Number of Songs
                                Text(
                                  '${data[index].numOfSongs} Songs',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
                                  )
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
      
                
                  ],
                ),
              );
            }
          )
        ],
      ),
    );
  }
}


///Error
class ArtistWhenError extends StatelessWidget {
  const ArtistWhenError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


enum SortbyOrder{
  recentlyPlayed,
  artist,
  artistReversed,
  numOfSongs
}

extension SortByOrder on SortbyOrder{
  String getSortOrder(){
    switch(this){
      case SortbyOrder.recentlyPlayed:
        return 'Recently Played';
      case SortbyOrder.artist:
        return "Artist";
      case SortbyOrder.artistReversed:
        return "Artist Reversed";
      case SortbyOrder.numOfSongs:
        return "Number of Songs";
    }
  }
}
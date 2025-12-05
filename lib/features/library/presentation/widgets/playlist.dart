import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/core/cacheimage.dart';
import 'package:musium/core/color.dart';
import 'package:musium/features/home/presentation/home.dart';
import 'package:musium/features/library/domain/entity/library_entity.dart';
import 'package:musium/features/library/presentation/provider/provider.dart';
import 'package:musium/features/library/presentation/widgets/libray_row.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PlaylistWidget extends ConsumerWidget{
  const PlaylistWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    final data = ref.watch(getPlaylistsProvider);

    return RefreshIndicator(
      onRefresh: () => ref.refresh(getPlaylistsProvider.future),
      child: Stack(
        children: [
          if(data.hasValue)
            PlaylistWhenData(data: data.requireValue),

          if(data.isLoading && !data.hasValue)
            PlaylistShimmer(), //Shimmer
          
          if(data.hasError && !data.hasValue)
            Placeholder(), //Error widget

          if(data.hasError && data.hasValue)
            Placeholder() //Error banner with refresh button

        ]
      )
    );
  }
}


class PlaylistWhenData extends StatefulWidget {
  const PlaylistWhenData({
    super.key,
    required this.data
  });

  final List<PlaylistEntity> data;

  @override
  State<PlaylistWhenData> createState() => _PlaylistWhenDataState();
}

class _PlaylistWhenDataState extends State<PlaylistWhenData> with AutomaticKeepAliveClientMixin{
  final ValueNotifier<String> sortLabel = ValueNotifier("Recently played");

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final width = MediaQuery.of(context).size.width;
    
    return CustomScrollView(
      slivers: [
        heightSpace(7),
        
        //Liked playlist
        SliverToBoxAdapter(
          child: LibraryRow(
            function: (){
          
            }, 
            icon: Icons.favorite_outline, 
            text: 'Your liked Playlist'
          )
        ),

        heightSpace(40),

        //Sort order button
        widget.data.isEmpty
          ? const SliverToBoxAdapter(child: SizedBox.shrink())

          : SliverAppBar(
            pinned: true,
            toolbarHeight: 30,
            flexibleSpace: SizedBox(
              child: Row(
                children: [
                  const Icon(Icons.swap_vert),
              
              
                  PopupMenuButton(
                    onSelected: (value) {
                      sortLabel.value = value;
                    },

                    itemBuilder: (context){
                      return SortOrder.values.map((value){
                        return PopupMenuItem(
                          value: value.sortOrder,
                          child: Text(value.sortOrder)
                        );
                      }).toList();
                    },

                    child: ValueListenableBuilder(
                      valueListenable: sortLabel,
                      builder: (context, value, _) {
                        return Text(
                          value,
                          style: TextStyle(
                            color: AppColor.primaryColor
                          )
                        );
                      }
                    ),
                  ),
                ],
              ),
            )
          ),
        
        //Playlist
        widget.data.isEmpty
          ? const SliverToBoxAdapter(
              child: SizedBox(
                height: 500,
                child: PlaylistWhenEmpty()
              )
            )
          
          : SliverList.builder(
            
            itemCount: widget.data.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Row(
                    spacing: 10,
                    children: [
                      
                      //Image
                      CacheImage(
                        imageUrl: widget.data[index].imageUrl, 
                        height: 60, 
                        width: 60,
                      ),
                  
                      //Playlist name
                      SizedBox(
                        width: width * 0.7,
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              widget.data[index].name,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              '${widget.data[index].numOfSongs} songs',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
                              )
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

class PlaylistShimmer extends StatelessWidget {
  PlaylistShimmer({super.key});

  final ValueNotifier<String> sortLabel = ValueNotifier("Recently played");
  final List<PlaylistEntity> data = List.filled(7, 
    PlaylistEntity(
      id: 'aiouisdfk', 
      imageUrl: 'adofusifaodfa', 
      name: 'adfadfsfdisojifsofjdsififnsoifsoifds', 
      numOfSongs: 18
    )
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    return Skeletonizer(
      child: CustomScrollView(
        slivers: [
          heightSpace(7),
          
          //Liked playlist
          SliverToBoxAdapter(
            child: LibraryRow(
              function: (){
            
              }, 
              icon: Icons.favorite_outline, 
              text: 'Your liked Playlist'
            )
          ),
      
          heightSpace(40),
      
          //Sort order button
          SliverAppBar(
            pinned: true,
            toolbarHeight: 30,
            flexibleSpace: SizedBox(
              child: Row(
                children: [
                  const Icon(Icons.swap_vert),
              
              
                  PopupMenuButton(
                    onSelected: (value) {
                      sortLabel.value = value;
                    },
      
                    itemBuilder: (context){
                      return SortOrder.values.map((value){
                        return PopupMenuItem(
                          value: value.sortOrder,
                          child: Text(value.sortOrder)
                        );
                      }).toList();
                    },
      
                    child: ValueListenableBuilder(
                      valueListenable: sortLabel,
                      builder: (context, value, _) {
                        return Text(
                          value,
                          style: TextStyle(
                            color: AppColor.primaryColor
                          )
                        );
                      }
                    ),
                  ),
                ],
              ),
            )
          ),
          
          //Playlist
          SliverList.builder(
            itemCount: data.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Row(
                    spacing: 10,
                    children: [
                      
                      //Image
                      CacheImage(
                        imageUrl: data[index].imageUrl, 
                        height: 60, 
                        width: 60,
                      ),
                  
                      //Playlist name
                      SizedBox(
                        width: width * 0.7,
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              data[index].name,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              '${data[index].numOfSongs} songs',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
                              )
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
      ),
    );
  }
}

class PlaylistWhenEmpty extends StatelessWidget {
  const PlaylistWhenEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: .min,
        children: [
          Icon(
            Icons.playlist_add,
            size: 60,
            color: Theme.of(context).colorScheme.onSurface.withAlpha(150),
          ),
          Text(
            "No playlist found",
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.onSurface.withAlpha(150),
              
            )
          ),
        ],
      )
    );
  }
}






enum SortOrder{
  recentlyPlayed,
  mostPlayed,
  alphabetical,
  alphabeticalReverse,
  oldestFirst,
  newestFirst
}

extension SortOrderLabel on SortOrder{
  String get sortOrder{
    switch(this){
      case SortOrder.recentlyPlayed:
        return 'Recently played';
      case SortOrder.mostPlayed:
        return 'Mostly Played';
      case SortOrder.alphabetical:
        return 'Alphabetical';
      case SortOrder.alphabeticalReverse:
        return 'Alphabetical Reverse';
      case SortOrder.oldestFirst:
        return 'Oldest First';
      case SortOrder.newestFirst:
        return 'Newest first';
    }
  }
}
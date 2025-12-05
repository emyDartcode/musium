import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/features/home/presentation/home.dart';
import 'package:musium/features/library/domain/entity/library_entity.dart';
import 'package:musium/features/library/presentation/provider/provider.dart';
import 'package:musium/features/library/presentation/widgets/libray_row.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FolderWidget extends ConsumerWidget {
  const FolderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reader = ref.watch(getFoldersProvider);


    // final data = reader.asData?.value.getRight();
    return RefreshIndicator(
      onRefresh: () => ref.refresh(getFoldersProvider.future),
      child: Stack(
        children: [
          ///Display when has value
          if(reader.hasValue)
            FolderWhenData(data: reader.requireValue),
            

      
          //Shimmer display for loading
          if(reader.isLoading && !reader.hasValue)
            const FolderShimmer(),
          
          if(reader.hasError && !reader.hasValue)
            const Align(
              alignment: Alignment.center,
              child: FolderWhenError()
            ),
          
        ],
      ),
    );
  }
}

//Widget with value
class FolderWhenData extends StatelessWidget {
  const FolderWhenData({
    super.key,
    required this.data,
  });

  final List<FolderEntity> data;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    

    return CustomScrollView(
      slivers: [

        //Add new playlist
        SliverToBoxAdapter(
          child: SizedBox(
            height: 60,
            child: LibraryRow(
              function: (){
                    
              },
              icon: Icons.add,
              text: 'Add New Playlist',
            ),
          ),
        ),

        heightSpace(5),
                
        //Your liked songs
        SliverToBoxAdapter(
          child: SizedBox(
            height: 60,
            child: LibraryRow(
              function: (){
                
              },
              icon: Icons.favorite_outline,
              text: 'Your liked songs',
            ),
          ),
        ),
                
        //Folder builder
        SliverList.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap:() {
                  
                },

                child: Row(
                  children: [

                    //Folder 
                    const Icon(
                      Icons.folder,
                      size: 50,
                      color: Color.fromARGB(255, 254, 231, 148)
                    ),
                    const SizedBox(width: 20),
                
                    SizedBox(
                      width: width * 0.66,
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                                      
                          //Folder name
                          Text(
                            data[index].name
                          ),
                                      
                          //Number of playlist
                          Text(
                            "${data[index].numOfPlaylist} playlists",
                      
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: .w400,
                              color: Theme.of(context).colorScheme.onSurface.withAlpha(200)
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
}

//Widget while loading
class FolderShimmer extends StatelessWidget {
  const FolderShimmer({super.key});


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    final List<FolderEntity> data = List.filled(7, FolderEntity(name: "abcdefghijklmnopqrstuvwxyz", numOfPlaylist: 7));

    return CustomScrollView(
      slivers: [

        //Add new playlist
        SliverToBoxAdapter(
          child: SizedBox(
            height: 60,
            child: Skeletonizer(
              child: LibraryRow(
                function: (){
                      
                },
                icon: Icons.add,
                text: 'Add New Playlist',
              ),
            ),
          ),
        ),

        heightSpace(5),
                
        //Your liked songs
        SliverToBoxAdapter(
          child: SizedBox(
            height: 60,
            child: Skeletonizer(
              child: LibraryRow(
                function: (){
                  
                },
                icon: Icons.favorite_outline,
                text: 'Your liked songs',
              ),
            ),
          ),
        ),
                
        //Folder builder
        SliverList.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
            return Skeletonizer(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: InkWell(
                  onTap:() {
                    
                  },
              
                  child: Row(
                    children: [
              
                      //Folder 
                      const Icon(
                        Icons.folder,
                        size: 50,
                        color: Color.fromARGB(255, 254, 231, 148)
                      ),
                      const SizedBox(width: 20),
                  
                      SizedBox(
                        width: width * 0.66,
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                                        
                            //Folder name
                            Text(
                              data[index].name
                            ),
                                        
                            //Number of playlist
                            Text(
                              "${data[index].numOfPlaylist} playlists",
                        
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: .w400,
                                color: Theme.of(context).colorScheme.onSurface.withAlpha(200)
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        )
      ],
    );
  }
}

//Widget when error
class FolderWhenError extends StatelessWidget {
  const FolderWhenError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: .min,
        children: [
          Icon(
            Icons.folder_off_outlined,
            size: 70,
            color: Theme.of(context).colorScheme.onSurface.withAlpha(160)
          ),
          Text(
            "No playlist folder",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withAlpha(160)
            )
          ),
        ],
      ),
    );
  }
}
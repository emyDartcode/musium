import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/core/cacheimage.dart';
import 'package:musium/core/slanted_rectangle.dart';
import 'package:musium/features/explore/domain/entity/explore_ents.dart';
import 'package:musium/features/explore/presentation/provider/provider.dart';

class TopGenresGrids extends ConsumerWidget {
  const TopGenresGrids({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topGenreUiProvider = ref.watch(topGenresProvider);
    return topGenreUiProvider.when(

      data: (value){
        return dataBuilder(value);
      }, 

      error:(error, stack){
        return Text(error.toString());
      }, 
      loading: () => const Center(child: CircularProgressIndicator())
    );
    
  }

  Widget dataBuilder(List<TopGenres> value){
   return GridView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: value.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.55
      ), 
      itemBuilder: (context, index){
        return InkWell(
          onTap: () {
            //TODO: Add function to each grid in the top genres
          },
          child: Container( 
            decoration: BoxDecoration(
              color: value[index].color ?? Colors.pink,
              borderRadius: const BorderRadius.all(Radius.circular(10))
            ), 
          
            child: Stack(
              children: [
          
                //Image
                Positioned(
                  bottom: -20,
                  right: -10,
                  child: SlantedRectangle(
                    width: 100,
                    height: 90,
                    color: Colors.transparent,
                    angle: 0.7,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: CacheImage(
                        imageUrl: value[index].imageUrl, 
                        height: 90, 
                        width: 90
                      ),
                    ),
                  ),
                ),
                
                //Title
                Positioned(
                  top: 15,
                  left: 15,
                  child: Text(
                    value[index].type,
                    style: Theme.of(context).textTheme.bodyLarge
                  )
                ),
              ],
            )
          ),
        );
      }
    ); 
  }
}
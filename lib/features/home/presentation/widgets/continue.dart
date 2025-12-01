import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/core/cacheimage.dart';
import 'package:musium/core/color.dart';
import 'package:musium/features/home/domain/entity/home_entity.dart';
import 'package:musium/features/home/presentation/provider/home_provider.dart';


// ignore: must_be_immutable
class ContinueListeningWidget extends ConsumerWidget {
  ContinueListeningWidget({
    super.key,
    required this.width,
  });

  double width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watcher = ref.watch(continueListeningProvider);
    return watcher.when(
      data:(value){
        return dataPresent(value);
      } , 
      error: (error, st){
        return Text(error.toString());
      }, 
      loading: () => const CircularProgressIndicator()
    );
  }

  Widget dataPresent(List<ContinueListening> continueList){
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        mainAxisExtent: width * 0.46,

      ), 
      scrollDirection: Axis.horizontal,
      itemCount: continueList.length,
      itemBuilder: (context, index){

        return InkWell(
          onTap: () {
            
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 1),
          
            decoration: BoxDecoration(
              color: AppColor.faintTextColor,
              borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
          
            child: Row(
              crossAxisAlignment: .center,
              spacing: 5,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: CacheImage(
                    key: ValueKey(continueList[index].imageUrl),
                    imageUrl: continueList[index].imageUrl,
                    height: 55, 
                    width: 55
                  )
                ),

                Text(continueList[index].type),
              ],
            )
          ),
        );
      }
    );
  }

  
}


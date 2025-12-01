import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/core/cacheimage.dart';
import 'package:musium/core/circle.dart';
import 'package:musium/features/home/presentation/provider/home_provider.dart';

class TopMix extends ConsumerWidget {
  const TopMix({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watcher = ref.watch(topMixProvider);

    return CustomScrollView(
      controller: ScrollController(),
      scrollDirection: Axis.horizontal,
      slivers: [
        SliverGrid(
          
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 20,
          ), 
          delegate: SliverChildBuilderDelegate(
            (context, index){
              return Stack(
                children: [
                  
                  CacheImage(
                    imageUrl: watcher[index].imageUrl, 
                    height: 150, 
                    width: 150
                  ),
                  Positioned(
                    top: 0,
                    left: 10,
                    child: Text(
                      watcher[index].type,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        // color: Colors.white,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3
                          ..color = Colors.black,
                        
                      ),
                      
                    ),
                  ),
              
                  Positioned(
                    top: 0,
                    left: 10,
                    child: Text(
                      watcher[index].type,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        
                      ),
                      
                    ),
                  ),
              
                  const Positioned(
                    left:-10,
                    top: 10,
                    child: HalfCircleCut(
                      radius: 10, 
                      direction: CutDirection.leftCut,
                      color: Colors.white,
                    ),
                  ),
              
                  const Positioned(
                    right:-35,
                    bottom: 10,
                    child: HalfCircleCut(
                      radius: 30, 
                      direction: CutDirection.rightCut,
                      color: Colors.white,
                    ),
                  ),
              
              
              
                ],
              );
            },
            childCount: watcher.length
          ),
        )
      ],
    );
  }
}
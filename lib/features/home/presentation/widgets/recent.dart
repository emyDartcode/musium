import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/core/cacheimage.dart';
import 'package:musium/features/home/presentation/provider/home_provider.dart';

class Recent extends ConsumerWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiProvider = ref.watch(getRecentProvider);

    return GridView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: uiProvider.value?.length ?? 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 30 

      ), 
      itemBuilder: (context,index){
        return CacheImage(
          imageUrl: uiProvider.value?[index].imageUrl ?? 'nothing', 
          height: 80, 
          width: 80,
        );
      }
    );
  }
}
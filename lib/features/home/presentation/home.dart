import 'package:flutter/material.dart';
import 'package:musium/features/home/presentation/widgets/continue.dart';
import 'package:musium/features/home/presentation/widgets/recent.dart';
import 'package:musium/features/home/presentation/widgets/top_mix.dart';
import 'package:musium/widgets/appbars.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: const HomeAppBar(),
      body: CustomScrollView(
        cacheExtent: 1000,
        
        slivers: [
          //Continue Listening
          SliverToBoxAdapter(
            child: Text(
              "Continue Listening",
              style: Theme.of(context).textTheme.titleSmall
            )
          ),
      
          heightSpace(10),
      
          SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: ContinueListeningWidget(
                width: width,
              )
            )
          ),
      
          heightSpace(25),
      
          SliverToBoxAdapter(
            child: Text(
              'Your Top Mixes',
              style: Theme.of(context).textTheme.titleSmall
            ),
          ),
      
          heightSpace(10),
      
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: TopMix()
            )
          ), 
      
          heightSpace(30),
      
          SliverToBoxAdapter(
            child: Text(
              'Based on your recent listening',
              style: Theme.of(context).textTheme.titleSmall
            ),
          ),
      
      
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
              child: Recent()
            )
          )
      
        ],
      )
    );
  }

  
}

//height Space
Widget heightSpace(double space){
  return SliverToBoxAdapter(
    child: SizedBox(
      height: space,
    )
  );
}

//Width space
Widget widthSpace(double space){
  return SliverToBoxAdapter(
    child: SizedBox(
      width: space,
    )
  );
}
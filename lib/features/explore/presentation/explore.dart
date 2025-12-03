import 'package:flutter/material.dart';
import 'package:musium/features/explore/presentation/wigets/browse_all.dart';
import 'package:musium/features/explore/presentation/wigets/search.dart';
import 'package:musium/features/explore/presentation/wigets/top_genres.dart';
import 'package:musium/features/home/presentation/home.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      cacheExtent: 1000,
    
      slivers: [
        SliverAppBar(
          
        ),

    
        //Search input
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 45,
            child: SearchExplore()
          )
        ),
    
        heightSpace(30),
    
    
        //Top genre text
        SliverToBoxAdapter(
          child: Text(
            'Top Genres',
            style: Theme.of(context).textTheme.bodyLarge
          )
        ),
    
        heightSpace(10),
    
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 190,
            child: TopGenresGrids()
          )
        ),
    
        heightSpace(60),
    
        SliverToBoxAdapter(
          child: Text(
            'Browse All',
            style: Theme.of(context).textTheme.bodyLarge
          )
        ),
    
        const SliverToBoxAdapter(
          child: SizedBox(
            height:400,
            child: BrowseAllGrid()
          )
        )
    
    
    
      ],
    );
  }
}
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:musium/core/color.dart';
import 'package:musium/features/library/presentation/widgets/artist.dart';
import 'package:musium/features/library/presentation/widgets/folder.dart';
import 'package:musium/features/library/presentation/widgets/playlist.dart';

class LibraryTab extends StatefulWidget {
  const LibraryTab({super.key});

  @override
  State<LibraryTab> createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab> with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  final ValueNotifier<int> currentIndex = ValueNotifier(0);
  late TabController tabController;
  final tabColor = Colors.blue;

  @override
  void initState(){
    super.initState();
    tabController = TabController(
      length: 5, 
      vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    super.build(context);

    

    return CustomScrollView(
      slivers: [
        
        //App bar
        SliverAppBar(
          pinned: true,
          elevation: 0,
          toolbarHeight: 50,
          // backgroundColor: Colors.transparent,
          
          // surfaceTintColor: Colors.transparent,
          flexibleSpace: ButtonsTabBar(
            controller: tabController,
            backgroundColor: AppColor.primaryColor,
            unselectedBackgroundColor: Colors.transparent,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            height: 40,
            unselectedLabelStyle: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 12,
            ),
            // center: true,

            // contentCenter: true,

            borderWidth: 1,
            borderColor: Colors.blue,
            unselectedBorderColor: Colors.blue,
            tabs: const [
              Tab(
                text: 'Folder'
              ),

              Tab(
                text: 'Playlist'
              ),

              Tab(
                text: 'Artists'
              ),

              Tab(
                text: 'Albums'
              ),
              Tab(
                text: 'Favourite',
              )
            ]
          )
    
        ),

        //Tab bar view
        SliverToBoxAdapter(
          child: SizedBox(
            height: height - 30,
            child: Center(
              child: TabBarView(
                controller: tabController,
                children: const [
                  FolderWidget(),
                  PlaylistWidget(),
                  ArtistWidget(),
                  Text("Album"),
                  Text("Favourite")
                ]
              ),
            ),
          )
        )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
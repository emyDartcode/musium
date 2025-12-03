import 'package:flutter/material.dart';
import 'package:musium/core/color.dart';
import 'package:musium/features/explore/presentation/explore.dart';
import 'package:musium/features/home/presentation/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TabBarView(
              children: [
                HomePage(),
                ExploreTab(),
                Center(child: Text("Library"))
              ]
            ),
          ),
        ),

        bottomNavigationBar: SizedBox(
          height: 50,
          child: TabBar(
            indicatorColor: AppColor.primaryColor,
            labelColor: AppColor.primaryColor,
            dividerHeight: 0,
          
            labelStyle: Theme.of(context).textTheme.bodySmall,
            
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                ),
                text: "Home"
              ),
          
              Tab(
                icon: Icon(Icons.search),
                text: "Explore"
              ),
          
              Tab(
                icon: Icon(Icons.folder_outlined),
                text: "Library"
              )
              
            ]
          ),
        ),
      
        
      
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:musium/core/cacheimage.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        children: [
          ClipOval(
          child: CacheImage(
            imageUrl: 'http://i.pravatar.cc/300',
            height: 20,
            width: 20,
          )
      ),
          Text("Welcome"),
        ],
      )
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        children: [
          ClipOval(
          child: CacheImage(
            imageUrl: 'http://i.pravatar.cc/300',
            height: 20,
            width: 20,
          )
      ),
          Text("Welcome"),
        ],
      )
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
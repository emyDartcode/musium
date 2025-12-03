import 'package:flutter/material.dart';

class Search{
  final String artist;
  final String songTitle;
  final String? imageUrl;

  Search({required this.artist, required this.songTitle, this.imageUrl});
}

class TopGenres{
  final String type;
  final String imageUrl;
  final Color? color;

  TopGenres({
    required this.type, 
    required this.imageUrl,
    this.color
  });
}

class BrowseAll extends TopGenres{
  BrowseAll({
    required super.type, 
    required super.imageUrl, 
    super.color
  });
}
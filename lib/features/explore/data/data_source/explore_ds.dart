import 'package:flutter/material.dart';
import 'package:musium/features/explore/domain/entity/explore_ents.dart';

class ExploreDataSource{
  ///Search explore
  Future<List<Search>> searchExplore(String searchInput) async{
    return [
      Search(
        artist: '', 
        songTitle: ''
      ),

    ];
  }


  ///Get top genres
  Future<List<TopGenres>> getTopGenres() async {
    return await Future.delayed(const Duration(seconds: 5), () {
      final List<TopGenres> genres = [
        TopGenres(type: 'Kpop', imageUrl: 'https://i.pravatar.cc/300?img=1', color: const Color.fromRGBO(117, 201, 34, 1)),
        TopGenres(type: 'Indie', imageUrl: 'https://i.pravatar.cc/300?img=2', color: const Color.fromRGBO(207, 37, 160, 1)),
        TopGenres(type: 'R&B', imageUrl: 'https://i.pravatar.cc/300?img=3', color: const Color.fromRGBO(74, 85, 143, 1)),
        TopGenres(type: 'Pop', imageUrl: 'https://i.pravatar.cc/300?img=4', color: const Color.fromRGBO(189, 98, 32, 1)),
        TopGenres(type: 'Gymn', imageUrl: 'https://i.pravatar.cc/300?img=5', color: const Color.fromRGBO(255, 99, 71, 1)),
        TopGenres(type: 'Moody', imageUrl: 'https://i.pravatar.cc/300?img=6', color: const Color.fromRGBO(123, 104, 238, 1)),
        TopGenres(type: 'Jazz', imageUrl: 'https://i.pravatar.cc/300?img=7', color: const Color.fromRGBO(32, 178, 170, 1)),
        TopGenres(type: 'Rock', imageUrl: 'https://i.pravatar.cc/300?img=8', color: const Color.fromRGBO(255, 140, 0, 1)),
        TopGenres(type: 'Classical', imageUrl: 'https://i.pravatar.cc/300?img=9', color: const Color.fromRGBO(138, 43, 226, 1)),
        TopGenres(type: 'Electronic', imageUrl: 'https://i.pravatar.cc/300?img=10', color: const Color.fromRGBO(0, 206, 209, 1)),
        TopGenres(type: 'Reggae', imageUrl: 'https://i.pravatar.cc/300?img=11', color: const Color.fromRGBO(34, 139, 34, 1)),
        TopGenres(type: 'Latin', imageUrl: 'https://i.pravatar.cc/300?img=12', color: const Color.fromRGBO(255, 69, 0, 1)),
        TopGenres(type: 'Soul', imageUrl: 'https://i.pravatar.cc/300?img=13', color: const Color.fromRGBO(199, 21, 133, 1)),
        TopGenres(type: 'Hip Hop', imageUrl: 'https://i.pravatar.cc/300?img=14', color: const Color.fromRGBO(70, 130, 180, 1)),
        TopGenres(type: 'Folk', imageUrl: 'https://i.pravatar.cc/300?img=15', color: const Color.fromRGBO(255, 215, 0, 1)),
        TopGenres(type: 'K-R&B', imageUrl: 'https://i.pravatar.cc/300?img=16', color: const Color.fromRGBO(199, 0, 57, 1)),
        TopGenres(type: 'Alternative', imageUrl: 'https://i.pravatar.cc/300?img=17', color: const Color.fromRGBO(72, 61, 139, 1)),
        TopGenres(type: 'Trap', imageUrl: 'https://i.pravatar.cc/300?img=18', color: const Color.fromRGBO(244, 164, 96, 1)),
        TopGenres(type: 'Blues', imageUrl: 'https://i.pravatar.cc/300?img=19', color: const Color.fromRGBO(0, 191, 255, 1)),
        TopGenres(type: 'Dance', imageUrl: 'https://i.pravatar.cc/300?img=20', color: const Color.fromRGBO(218, 112, 214, 1)),
        TopGenres(type: 'EDM', imageUrl: 'https://i.pravatar.cc/300?img=21', color: const Color.fromRGBO(255, 20, 147, 1)),
        TopGenres(type: 'Funk', imageUrl: 'https://i.pravatar.cc/300?img=22', color: const Color.fromRGBO(127, 255, 212, 1)),
        TopGenres(type: 'Gospel', imageUrl: 'https://i.pravatar.cc/300?img=23', color: const Color.fromRGBO(255, 182, 193, 1)),
        TopGenres(type: 'House', imageUrl: 'https://i.pravatar.cc/300?img=24', color: const Color.fromRGBO(95, 158, 160, 1)),
        TopGenres(type: 'Indie Pop', imageUrl: 'https://i.pravatar.cc/300?img=25', color: const Color.fromRGBO(255, 105, 180, 1)),
        TopGenres(type: 'Indie Rock', imageUrl: 'https://i.pravatar.cc/300?img=26', color: const Color.fromRGBO(0, 128, 128, 1)),
        TopGenres(type: 'Latin Pop', imageUrl: 'https://i.pravatar.cc/300?img=27', color: const Color.fromRGBO(138, 43, 226, 1)),
        TopGenres(type: 'Lo-fi', imageUrl: 'https://i.pravatar.cc/300?img=28', color: const Color.fromRGBO(255, 99, 71, 1)),
        TopGenres(type: 'Metal', imageUrl: 'https://i.pravatar.cc/300?img=29', color: const Color.fromRGBO(60, 179, 113, 1)),
        TopGenres(type: 'Punk', imageUrl: 'https://i.pravatar.cc/300?img=30', color: const Color.fromRGBO(255, 140, 0, 1)),
        TopGenres(type: 'Reggaeton', imageUrl: 'https://i.pravatar.cc/300?img=31', color: const Color.fromRGBO(199, 21, 133, 1)),
        TopGenres(type: 'Soul Pop', imageUrl: 'https://i.pravatar.cc/300?img=32', color: const Color.fromRGBO(32, 178, 170, 1)),
        TopGenres(type: 'Synthwave', imageUrl: 'https://i.pravatar.cc/300?img=33', color: const Color.fromRGBO(255, 215, 0, 1)),
        TopGenres(type: 'Techno', imageUrl: 'https://i.pravatar.cc/300?img=34', color: const Color.fromRGBO(70, 130, 180, 1)),
        TopGenres(type: 'Trap Soul', imageUrl: 'https://i.pravatar.cc/300?img=35', color: const Color.fromRGBO(255, 69, 0, 1)),
        TopGenres(type: 'Trip-Hop', imageUrl: 'https://i.pravatar.cc/300?img=36', color: const Color.fromRGBO(123, 104, 238, 1)),
        TopGenres(type: 'World', imageUrl: 'https://i.pravatar.cc/300?img=37', color: const Color.fromRGBO(74, 85, 143, 1)),
        TopGenres(type: 'Chill', imageUrl: 'https://i.pravatar.cc/300?img=38', color: const Color.fromRGBO(207, 37, 160, 1)),
        TopGenres(type: 'Acoustic', imageUrl: 'https://i.pravatar.cc/300?img=39', color: const Color.fromRGBO(117, 201, 34, 1)),
        TopGenres(type: 'Experimental', imageUrl: 'https://i.pravatar.cc/300?img=40', color: const Color.fromRGBO(189, 98, 32, 1)),
        TopGenres(type: 'Alternative R&B', imageUrl: 'https://i.pravatar.cc/300?img=41', color: const Color.fromRGBO(255, 20, 147, 1)),
        TopGenres(type: 'Ambient', imageUrl: 'https://i.pravatar.cc/300?img=42', color: const Color.fromRGBO(0, 191, 255, 1)),
        TopGenres(type: 'Garage', imageUrl: 'https://i.pravatar.cc/300?img=43', color: const Color.fromRGBO(218, 112, 214, 1)),
        TopGenres(type: 'Synthpop', imageUrl: 'https://i.pravatar.cc/300?img=44', color: const Color.fromRGBO(244, 164, 96, 1)),
        TopGenres(type: 'Vaporwave', imageUrl: 'https://i.pravatar.cc/300?img=45', color: const Color.fromRGBO(255, 105, 180, 1)),
        TopGenres(type: 'Funk Pop', imageUrl: 'https://i.pravatar.cc/300?img=46', color: const Color.fromRGBO(95, 158, 160, 1)),
        TopGenres(type: 'Chillhop', imageUrl: 'https://i.pravatar.cc/300?img=47', color: const Color.fromRGBO(199, 0, 57, 1)),
        TopGenres(type: 'Dream Pop', imageUrl: 'https://i.pravatar.cc/300?img=48', color: const Color.fromRGBO(199, 21, 133, 1)),
        TopGenres(type: 'Electropop', imageUrl: 'https://i.pravatar.cc/300?img=49', color: const Color.fromRGBO(0, 128, 128, 1)),
        TopGenres(type: 'Lo-fi Hip Hop', imageUrl: 'https://i.pravatar.cc/300?img=50', color: const Color.fromRGBO(255, 182, 193, 1)),
      ];

      return genres;
    });
  }



  ///Browse all
  Future<List<BrowseAll>> browseAll() async {
    return Future.delayed(const Duration(seconds: 5),
      (){
        return [
          BrowseAll(type: 'Made for You', imageUrl: 'https://i.pravatar.cc/300?img=1', color: Colors.lightBlue),
          BrowseAll(type: 'Music Charts', imageUrl: 'https://i.pravatar.cc/300?img=2', color: Colors.orange),
          BrowseAll(type: 'Podcasts', imageUrl: 'https://i.pravatar.cc/300?img=3', color: Colors.green),
          BrowseAll(type: 'Bollywood', imageUrl: 'https://i.pravatar.cc/300?img=4', color: Colors.pink),
          BrowseAll(type: 'RELEASED', imageUrl: 'https://i.pravatar.cc/300?img=5', color: Colors.purple),
          BrowseAll(type: 'Pop Fusion', imageUrl: 'https://i.pravatar.cc/300?img=6', color: Colors.teal),
          BrowseAll(type: 'Hip Hop', imageUrl: 'https://i.pravatar.cc/300?img=7', color: Colors.red),
          BrowseAll(type: 'R&B', imageUrl: 'https://i.pravatar.cc/300?img=8', color: Colors.indigo),
          BrowseAll(type: 'Rock', imageUrl: 'https://i.pravatar.cc/300?img=9', color: Colors.cyan),
          BrowseAll(type: 'Jazz', imageUrl: 'https://i.pravatar.cc/300?img=10', color: Colors.amber),
          BrowseAll(type: 'Classical', imageUrl: 'https://i.pravatar.cc/300?img=11', color: Colors.lime),
          BrowseAll(type: 'Electronic', imageUrl: 'https://i.pravatar.cc/300?img=12', color: Colors.deepOrange),
          BrowseAll(type: 'Reggae', imageUrl: 'https://i.pravatar.cc/300?img=13', color: Colors.lightGreen),
          BrowseAll(type: 'Latin', imageUrl: 'https://i.pravatar.cc/300?img=14', color: Colors.deepPurple),
          BrowseAll(type: 'Soul', imageUrl: 'https://i.pravatar.cc/300?img=15', color: Colors.blueGrey),
          BrowseAll(type: 'K-Pop', imageUrl: 'https://i.pravatar.cc/300?img=16', color: Colors.brown),
          BrowseAll(type: 'Afrobeat', imageUrl: 'https://i.pravatar.cc/300?img=17', color: Colors.redAccent),
          BrowseAll(type: 'Indie', imageUrl: 'https://i.pravatar.cc/300?img=18', color: Colors.cyanAccent),
          BrowseAll(type: 'Folk', imageUrl: 'https://i.pravatar.cc/300?img=19', color: Colors.tealAccent),
          BrowseAll(type: 'Soundtrack', imageUrl: 'https://i.pravatar.cc/300?img=20', color: Colors.pinkAccent),
        ];
      }
    );
  }
    

}
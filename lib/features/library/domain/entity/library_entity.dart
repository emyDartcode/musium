class FolderEntity{
  final String name;
  final int numOfPlaylist;

  FolderEntity({
    required this.name,
    required this.numOfPlaylist,
  });
}



class SubFolder{
  final String name;
  final String imageUrl;
  final String numOfSongs;

  SubFolder({
    required this.name,
    required this.imageUrl,
    required this.numOfSongs,
  });
}


class PlaylistEntity{
  final String id;
  final String imageUrl;
  final String name;
  final int numOfSongs;

  PlaylistEntity({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.numOfSongs
  });
}


class PlaylistSong{
  final String playlistID;
  final String songId;
  final String imageUrl;
  final String title;
  final String artist;
  
  PlaylistSong({
    required this.playlistID,
    required this.songId,
    required this.imageUrl,
    required this.title,
    required this.artist,
  });
}


class ArtistEntity{
  final String imageUrl;
  final String artist;
  int numOfSongs;
  int numOfAlbum;

  ArtistEntity({
    required this.imageUrl,
    required this.artist,
    required this.numOfAlbum,
    required this.numOfSongs,
  });
}


class AlbumEntity{
  final String id;
  final String imageUrl;
  final String artist;
  final String albumName;
  int numOfSongs;


  AlbumEntity({
    required this.id,
    required this.imageUrl,
    required this.artist,
    required this.albumName,
    required this.numOfSongs
  });
}



class FavouriteSongs{
  final String songId;
  final String title;
  final String artist;
  final int duration;

  FavouriteSongs({
    required this.songId,
    required this.title,
    required this.artist,
    required this.duration,
  });
}
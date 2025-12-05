
import 'package:fpdart/fpdart.dart';
import 'package:musium/features/library/data/data_source/library_ds.dart';
import 'package:musium/features/library/data/implementation/library_impl.dart';
import 'package:musium/features/library/domain/entity/library_entity.dart';
import 'package:musium/features/library/domain/use_case/library_uc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
LibraryUseCase libraryUseCase(Ref ref){
  return LibraryUseCase(
    LibraryImplementation(
      LibraryDataSource()
    )
  );
}

/// Get folder
@riverpod
Future<List<FolderEntity>> getFolders(Ref ref) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.getFolders();

  return result.fold(
    (failure) => throw Exception(failure.message),
    (folders) => folders,
  );
}

///Get sub folders
@riverpod
Future<List<SubFolder>> getSubFolders(Ref ref) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.getSubFolders();

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Get artists
@riverpod
Future<List<ArtistEntity>> getArtists(Ref ref) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.getArtists();

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Get albums
@riverpod
Future<List<AlbumEntity>> getAlbums(Ref ref) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.getAlbums();

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Get playlist
@riverpod
Future<List<PlaylistEntity>> getPlaylists(Ref ref) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.getPlaylists();

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Get favourite songs
@riverpod
Future<List<FavouriteSongs>> getFavouriteSongs(Ref ref) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.getFavouriteSongs();

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Get liked album
@riverpod
Future<List<AlbumEntity>> getLikedAlbums(Ref ref) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.getLikedAlbums();

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}


///Create folder
@riverpod
Future<Unit> createFolder(Ref ref, String folderName) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.createFolder(folderName);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Create subFolder
@riverpod
Future<Unit> createSubFolder(Ref ref, String subFolderName) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.createSubFolder(subFolderName);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Delete folder
@riverpod
Future<Unit> deleteFolder(Ref ref, String folderName) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.deleteFolder(folderName);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Delete subfolder
@riverpod
Future<Unit> deleteSubFolder(Ref ref, String subFolderName) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.deleteSubFolder(subFolderName);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}


///Delete Playlist
@riverpod
Future<Unit> deletePlaylist(Ref ref, String playlistName) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.deletePlaylist(playlistName);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Create Playlist
@riverpod
Future<Unit> createPlaylist(Ref ref, String playlistName) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.createPlaylist(playlistName);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Mark albums as like
@riverpod
Future<Unit> markAlbumAsLike(Ref ref, String albumId) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await  reader.markAlbumAsLike(albumId);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///unmark album as like
@riverpod
Future<Unit> unmarkAlbumAsLike(Ref ref, String albumId) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.unmarkAlbumAsLike(albumId);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

//Add song to favourite
@riverpod
Future<Unit> addSongToFavourite(Ref ref, String songId) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await  reader.addSongToFavourite(songId);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}

///Remove song from
@riverpod
Future<Unit> removeSongFromFavourite(Ref ref, String songId) async{
  final reader = ref.read(libraryUseCaseProvider);
  final result = await reader.removeSongFromFavourite(songId);

  return result.fold(
    (failure) => throw Exception(failure.message),
    (success) => success
  );
}


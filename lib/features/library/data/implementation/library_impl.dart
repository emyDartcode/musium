
import 'package:fpdart/fpdart.dart';
import 'package:musium/core/error.dart';
import 'package:musium/features/library/data/data_source/library_ds.dart';
import 'package:musium/features/library/domain/entity/library_entity.dart';
import 'package:musium/features/library/domain/repository/library_repo.dart';

class LibraryImplementation implements LibraryRepository {
  final LibraryDataSource libraryDataSource;

  LibraryImplementation(this.libraryDataSource);

  
  @override
  Future<Either<ErrorMessage, Unit>> addSongToFavourite(String songId) {
    return libraryDataSource.addSongToFavourite(songId);
  }

  @override
  Future<Either<ErrorMessage, Unit>> createFolder(String folderName) {
    return libraryDataSource.createFolder(folderName);
  }

  @override
  Future<Either<ErrorMessage, Unit>> createPlaylist(String playlistName) {
    return libraryDataSource.createPlaylist(playlistName);
  }

  @override
  Future<Either<ErrorMessage, Unit>> createSubFolder(String subFolderName) {
    return libraryDataSource.createSubFolder(subFolderName);
  }

  @override
  Future<Either<ErrorMessage, Unit>> deleteFolder(String folderId) {
    return libraryDataSource.deleteFolder(folderId);
  }

  @override
  Future<Either<ErrorMessage, Unit>> deletePlaylist(String playlistName) {
    return libraryDataSource.deletePlaylist(playlistName);
  }

  @override
  Future<Either<ErrorMessage, Unit>> deleteSubFolder(String subFolderName) {
    return libraryDataSource.deleteSubFolder(subFolderName);
  }

  @override
  Future<Either<ErrorMessage, List<AlbumEntity>>> getAlbums() {
    return libraryDataSource.getAlbums();
  }

  @override
  Future<Either<ErrorMessage, List<ArtistEntity>>> getArtists() {
    return libraryDataSource.getArtists();
  }

  @override
  Future<Either<ErrorMessage, List<FavouriteSongs>>> getFavouriteSongs() {
    return libraryDataSource.getFavouriteSongs();
  }

  @override
  Future<Either<ErrorMessage, List<FolderEntity>>> getFolders() {
    return libraryDataSource.getFolders();
  }

  @override
  Future<Either<ErrorMessage, List<AlbumEntity>>> getLikedAlbums() {
    return libraryDataSource.getLikedAlbums();
  }

  @override
  Future<Either<ErrorMessage, List<PlaylistEntity>>> getPlaylists() {
    return libraryDataSource.getPlaylists();
  }

  @override
  Future<Either<ErrorMessage, List<SubFolder>>> getSubFolders() {
    return libraryDataSource.getSubFolders();
  }

  @override
  Future<Either<ErrorMessage, Unit>> markAlbumAsLike(String albumId) {
    return libraryDataSource.markAlbumAsLike(albumId);
  }

  @override
  Future<Either<ErrorMessage, Unit>> removeSongFromFavourite(String songId) {
    return libraryDataSource.removeSongFromFavourite(songId);
  }

  @override
  Future<Either<ErrorMessage, Unit>> unmarkAlbumAsLike(String albumId) {
    return libraryDataSource.unmarkAlbumAsLike(albumId);
  }
  
}
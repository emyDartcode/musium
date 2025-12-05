import 'package:fpdart/fpdart.dart';
import 'package:musium/core/error.dart';
import 'package:musium/features/library/domain/entity/library_entity.dart';
import 'package:musium/features/library/domain/repository/library_repo.dart';

class LibraryUseCase {
  final LibraryRepository libraryRepository;

  LibraryUseCase(this.libraryRepository);

  Future<Either<ErrorMessage,List<FolderEntity>>> getFolders() {
    return libraryRepository.getFolders();
  }
  Future<Either<ErrorMessage,List<SubFolder>>> getSubFolders() {
    return libraryRepository.getSubFolders();
  }

  Future<Either<ErrorMessage,List<ArtistEntity>>> getArtists() {
    return libraryRepository.getArtists();
  }
  Future<Either<ErrorMessage,List<AlbumEntity>>> getAlbums() {
    return libraryRepository.getAlbums();
  }
  Future<Either<ErrorMessage,List<PlaylistEntity>>> getPlaylists() {
    return libraryRepository.getPlaylists();
  }
  Future<Either<ErrorMessage,List<FavouriteSongs>>> getFavouriteSongs() {
    return libraryRepository.getFavouriteSongs();
  }
  Future<Either<ErrorMessage,List<AlbumEntity>>> getLikedAlbums(){
    return libraryRepository.getLikedAlbums();
  }




  Future<Either<ErrorMessage,Unit>> createFolder(String folderName) {
    return libraryRepository.createFolder(folderName);
  }
  Future<Either<ErrorMessage,Unit>> createSubFolder(String subFolderName) {
    return libraryRepository.createSubFolder(subFolderName);
  }
  Future<Either<ErrorMessage,Unit>> deleteFolder(String folderId) {
    return libraryRepository.deleteFolder(folderId);
  }
  Future<Either<ErrorMessage,Unit>> deleteSubFolder(String subFolderId){
    return libraryRepository.deleteSubFolder(subFolderId);
  }
  Future<Either<ErrorMessage,Unit>> deletePlaylist(String playlistID) {
    return libraryRepository.deletePlaylist(playlistID);
  }
  Future<Either<ErrorMessage, Unit>> createPlaylist(String playlistName) {
    return libraryRepository.createPlaylist(playlistName);
  }
  Future<Either<ErrorMessage, Unit>> markAlbumAsLike(String albumId) {
    return libraryRepository.markAlbumAsLike(albumId);
  }
  Future<Either<ErrorMessage, Unit>> unmarkAlbumAsLike(String albumId) {
    return libraryRepository.unmarkAlbumAsLike(albumId);
  }
  Future<Either<ErrorMessage, Unit>> addSongToFavourite(String songId) {
    return libraryRepository.addSongToFavourite(songId);
  }
  Future<Either<ErrorMessage, Unit>> removeSongFromFavourite(String songId) {
    return libraryRepository.removeSongFromFavourite(songId);
  }
}
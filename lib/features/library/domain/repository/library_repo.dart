import 'package:fpdart/fpdart.dart';
import 'package:musium/core/error.dart';
import 'package:musium/features/library/domain/entity/library_entity.dart';

abstract class LibraryRepository {
  Future<Either<ErrorMessage,List<FolderEntity>>> getFolders();
  Future<Either<ErrorMessage,List<SubFolder>>> getSubFolders();
  Future<Either<ErrorMessage,List<ArtistEntity>>> getArtists();  
  Future<Either<ErrorMessage,List<AlbumEntity>>> getAlbums();
  Future<Either<ErrorMessage,List<PlaylistEntity>>> getPlaylists();
  Future<Either<ErrorMessage,List<FavouriteSongs>>> getFavouriteSongs();
  Future<Either<ErrorMessage,List<AlbumEntity>>> getLikedAlbums();


  Future<Either<ErrorMessage,Unit>> createFolder(String folderName);
  Future<Either<ErrorMessage,Unit>> createSubFolder(String subFolderName);
  Future<Either<ErrorMessage,Unit>> deleteFolder(String folderName);
  Future<Either<ErrorMessage,Unit>> deleteSubFolder(String subFolderName);
  Future<Either<ErrorMessage,Unit>> deletePlaylist(String playlistName);
  Future<Either<ErrorMessage, Unit>> createPlaylist(String playlistName);
  Future<Either<ErrorMessage, Unit>> markAlbumAsLike(String albumId);
  Future<Either<ErrorMessage, Unit>> unmarkAlbumAsLike(String albumId);
  Future<Either<ErrorMessage, Unit>> addSongToFavourite(String songId);
  Future<Either<ErrorMessage, Unit>> removeSongFromFavourite(String songId);
}
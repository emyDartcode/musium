import 'package:fpdart/fpdart.dart';
import 'package:musium/core/error.dart';
import 'package:musium/features/library/domain/entity/library_entity.dart';

class LibraryDataSource {

  Future<Either<ErrorMessage, List<FolderEntity>>> getFolders() async {
    try {
      return Right(
        await Future.delayed(const Duration(seconds: 4),(){
          return [
            FolderEntity(name: "K-Pop Mixes sdfsaoidfaoidffuadsjoijewsdfouiwer", numOfPlaylist: 12),
            FolderEntity(name: "Afrobeats", numOfPlaylist: 8),
            FolderEntity(name: "Coding Playlist", numOfPlaylist: 5),
            FolderEntity(name: "Workout", numOfPlaylist: 4),
            FolderEntity(name: "Sleep / Calm", numOfPlaylist: 9),
           ];

      }));
      
    } catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }


  Future<Either<ErrorMessage,List<SubFolder>>> getSubFolders() async{
    try{
      return const Right(
        []
      );
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }


  Future<Either<ErrorMessage,List<ArtistEntity>>> getArtists() async{
    try{
      return const Right(
        []
      );
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

    
  Future<Either<ErrorMessage,List<AlbumEntity>>> getAlbums() async{
    try{
      return const Right(
        []
      );
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  Future<Either<ErrorMessage,List<PlaylistEntity>>> getPlaylists() async{
    try{
      return const Right(
        []
      );
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  Future<Either<ErrorMessage,List<FavouriteSongs>>> getFavouriteSongs() async{
    try{
      return const Right(
        []
      );
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  Future<Either<ErrorMessage,List<AlbumEntity>>> getLikedAlbums() async{
    try{
      return const Right(
        []
      );
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  


  Future<Either<ErrorMessage,Unit>> createFolder(String folderName) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  Future<Either<ErrorMessage,Unit>> deleteFolder(String foldId) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  Future<Either<ErrorMessage,Unit>> deleteSubFolder(String subFolderId) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  Future<Either<ErrorMessage,Unit>> deletePlaylist(String playId) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  
  Future<Either<ErrorMessage,Unit>> createSubFolder(String subFolderName) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  Future<Either<ErrorMessage, Unit>> createPlaylist(String playlistName) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  Future<Either<ErrorMessage, Unit>> markAlbumAsLike(String albumId) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  Future<Either<ErrorMessage, Unit>> unmarkAlbumAsLike(String albumId) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  Future<Either<ErrorMessage, Unit>> addSongToFavourite(String songId) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  Future<Either<ErrorMessage, Unit>> removeSongFromFavourite(String songId) async{
    try{
      return const Right(unit);
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }
}
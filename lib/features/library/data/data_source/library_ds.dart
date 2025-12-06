import 'package:fpdart/fpdart.dart';
import 'package:musium/core/error.dart';
import 'package:musium/features/library/domain/entity/library_entity.dart';

class LibraryDataSource {

  Future<Either<ErrorMessage, List<FolderEntity>>> getFolders() async {
    try {
      return Right(
        await Future.delayed(const Duration(seconds: 2),(){
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
      return Right(
        await Future.delayed(const Duration(seconds: 3),
          (){
            return [

            ];
          }
        )
      );
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }


  Future<Either<ErrorMessage,List<ArtistEntity>>> getArtists() async{
    try{
      return Right(
        await Future.delayed(const Duration(seconds: 3),
          (){
            return [
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?1',
                artist: 'Ariana Bloom',
                numOfSongs: 323432,
                numOfAlbum: 3243243,
              ),
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?2',
                artist: 'Neo Carter',
                numOfSongs: 18,
                numOfAlbum: 2,
              ),
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?3',
                artist: 'Luna Waves',
                numOfSongs: 25,
                numOfAlbum: 4,
              ),
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?4',
                artist: 'Zion Blaze',
                numOfSongs: 40,
                numOfAlbum: 5,
              ),
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?5',
                artist: 'Mira Solis',
                numOfSongs: 27,
                numOfAlbum: 3,
              ),
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?6',
                artist: 'Dray Monarch',
                numOfSongs: 14,
                numOfAlbum: 1,
              ),
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?7',
                artist: 'Kyra Velvet',
                numOfSongs: 22,
                numOfAlbum: 2,
              ),
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?8',
                artist: 'Rex Orion',
                numOfSongs: 35,
                numOfAlbum: 4,
              ),
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?9',
                artist: 'Selah Ray',
                numOfSongs: 19,
                numOfAlbum: 2,
              ),
              ArtistEntity(
                imageUrl: 'https://picsum.photos/300?10',
                artist: 'Juno Shade',
                numOfSongs: 29,
                numOfAlbum: 3,
              ),

            ];
          }
        )
      );
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

    
  Future<Either<ErrorMessage,List<AlbumEntity>>> getAlbums() async{
    try{
      return Right(
        await Future.delayed(const Duration(seconds: 2),
          (){
            return [
              
            ];
          }
        )
      );
    } catch(e){
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  
  Future<Either<ErrorMessage,List<PlaylistEntity>>> getPlaylists() async{
    try{
      return Right(
        await Future.delayed(const Duration(seconds: 3),
          (){
            return [
              PlaylistEntity(
                id: 'pl_001',
                imageUrl: 'https://picsum.photos/300?1',
                name: 'Morning Boost adfafadfafdfsfdfsfdfafdasfaadfdewr',
                numOfSongs: 24,
              ),
              PlaylistEntity(
                id: 'pl_002',
                imageUrl: 'https://picsum.photos/300?2',
                name: 'Chill Vibes',
                numOfSongs: 18,
              ),
              PlaylistEntity(
                id: 'pl_003',
                imageUrl: 'https://picsum.photos/300?10',
                name: 'Workout Power',
                numOfSongs: 32,
              ),
              PlaylistEntity(
                id: 'pl_004',
                imageUrl: 'https://picsum.photos/300?4',
                name: 'Afro Heat',
                numOfSongs: 27,
              ),
              PlaylistEntity(
                id: 'pl_005',
                imageUrl: 'https://picsum.photos/300?5',
                name: 'K-Pop Essentials',
                numOfSongs: 22,
              ),
              PlaylistEntity(
                id: 'pl_006',
                imageUrl: 'https://picsum.photos/300?6',
                name: 'Late Night Drive',
                numOfSongs: 16,
              ),
              PlaylistEntity(
                id: 'pl_007',
                imageUrl: 'https://picsum.photos/300?7',
                name: 'Focus Mode',
                numOfSongs: 40,
              ),
              PlaylistEntity(
                id: 'pl_008',
                imageUrl: 'https://picsum.photos/300?8',
                name: 'Throwback Classics',
                numOfSongs: 29,
              ),
              PlaylistEntity(
                id: 'pl_009',
                imageUrl: 'https://picsum.photos/300?9',
                name: 'Indie Discoveries',
                numOfSongs: 14,
              ),
              PlaylistEntity(
                id: 'pl_010',
                imageUrl: 'https://picsum.photos/300?10',
                name: 'Calm & Soft',
                numOfSongs: 19,
              ),
              PlaylistEntity(
                id: 'pl_011',
                imageUrl: 'https://picsum.photos/300?11',
                name: 'Evening Chill',
                numOfSongs: 21,
              ),
              PlaylistEntity(
                id: 'pl_012',
                imageUrl: 'https://picsum.photos/300?12',
                name: 'Road Trip',
                numOfSongs: 28,
              ),
              PlaylistEntity(
                id: 'pl_013',
                imageUrl: 'https://picsum.photos/300?13',
                name: 'Acoustic Moods',
                numOfSongs: 17,
              ),
              PlaylistEntity(
                id: 'pl_014',
                imageUrl: 'https://picsum.photos/300?14',
                name: 'Hip Hop Hits',
                numOfSongs: 25,
              ),
              PlaylistEntity(
                id: 'pl_015',
                imageUrl: 'https://picsum.photos/300?15',
                name: 'Sunday Vibes',
                numOfSongs: 20,
              ),

            ];
          }
        )
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
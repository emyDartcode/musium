import 'package:musium/features/explore/domain/entity/explore_ents.dart';
import 'package:musium/features/explore/domain/repository/explore_repo.dart';

class ExploreUseCase {
  final ExploreRepository exploreRepository;

  ExploreUseCase(this.exploreRepository);

  //Serach explore
  Future<List<Search>> searchExplore(String songTitle){
    return exploreRepository.searchExplore(songTitle);
  }

  //Get top genres
  Future<List<TopGenres>> getTopGenres(){
    return exploreRepository.getTopGenres();
  }

  //Get browse all
  Future<List<BrowseAll>> browseAll(){
    return exploreRepository.getBrowseAll();
  }


}
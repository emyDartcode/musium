import 'package:musium/features/explore/data/data_source/explore_ds.dart';
import 'package:musium/features/explore/domain/entity/explore_ents.dart';
import 'package:musium/features/explore/domain/repository/explore_repo.dart';

class ExploreImplementation implements ExploreRepository{
  final ExploreDataSource exploreDataSource;

  ExploreImplementation(this.exploreDataSource);

  @override
  Future<List<BrowseAll>> getBrowseAll() {
    return exploreDataSource.browseAll();
  }

  @override
  Future<List<TopGenres>> getTopGenres() {
    return exploreDataSource.getTopGenres();
  }

  @override
  Future<List<Search>> searchExplore(String searchInput) {
    return exploreDataSource.searchExplore(searchInput);
  }

  
}
import 'package:musium/features/explore/domain/entity/explore_ents.dart';

abstract class ExploreRepository {
  Future<List<Search>> searchExplore(String searchInput);
  Future<List<TopGenres>> getTopGenres();
  Future<List<BrowseAll>> getBrowseAll();
}
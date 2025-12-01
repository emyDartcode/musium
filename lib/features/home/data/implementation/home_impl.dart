import 'package:musium/features/home/data/data%20source/home_ds.dart';
import 'package:musium/features/home/domain/entity/home_entity.dart';
import 'package:musium/features/home/domain/repository/home_repo.dart';

class HomeImpl implements HomeRepository {
  final HomeDs homeDs;

  HomeImpl(this.homeDs);

  @override
  Future<List<ContinueListening>> getContinueListening() {
    return homeDs.getContinueListening();
  }

  @override
  Future<List<RecentListening>> getRecentListening() {
    return homeDs.getRecentListening();
  }

  @override
  Future<List<TopMix>> getTopMix() {
    return homeDs.getTopMix();
  }

  @override
  Future<List<TopMix>> refreshTopMix() {
    return homeDs.refreshTopMix();
  }
}
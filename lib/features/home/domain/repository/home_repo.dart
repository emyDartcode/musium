import 'package:musium/features/home/domain/entity/home_entity.dart';

abstract class HomeRepository{
  Future<List<ContinueListening>> getContinueListening();
  Future<List<TopMix>> getTopMix();
  Future<List<TopMix>> refreshTopMix();
  Future<List<RecentListening>> getRecentListening();
  // Future<
}
import 'package:musium/features/home/domain/entity/home_entity.dart';
import 'package:musium/features/home/domain/repository/home_repo.dart';

class HomeUc {
  final HomeRepository homeRepo;

  HomeUc(this.homeRepo);

  Future<List<ContinueListening>> getContinueListening(){
    return homeRepo.getContinueListening();
  }
  Future<List<TopMix>> getTopMix(){
    return homeRepo.getTopMix();
  }

  Future<List<TopMix>> refreshTopMix(){
    return homeRepo.refreshTopMix();
  }
  Future<List<RecentListening>> getRecentListening(){
    return homeRepo.getRecentListening();
  }
}
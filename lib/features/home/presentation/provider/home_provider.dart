import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/features/home/data/data%20source/home_ds.dart';
import 'package:musium/features/home/data/implementation/home_impl.dart';
import 'package:musium/features/home/domain/entity/home_entity.dart';
import 'package:musium/features/home/domain/usecase/home_uc.dart';

//Use case provider
final homeUcProvider = Provider<HomeUc>((ref) { 
  return HomeUc(
    HomeImpl(
      HomeDs()
      )
    );
  }
);





class TopMixWatcher extends AsyncNotifier<List<TopMix>>{

  @override 
  Future<List<TopMix>> build(){
    final homeUc = ref.read(homeUcProvider);
    return homeUc.getTopMix();
  }

  //Refresh top mix
  Future<void> refreshTopMix() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => build());
  }
}




final topMixWatcherProvider = AsyncNotifierProvider<TopMixWatcher, List<TopMix>>(TopMixWatcher.new);





///..................... UI providers ...................

//Top mix provider
final topMixProvider = Provider<List<TopMix>>((ref){
  final watcher = ref.watch(topMixWatcherProvider);
  return watcher.value ?? [];
});


//Continue listening provider
final continueListeningProvider = FutureProvider<List<ContinueListening>>((ref) async{
  final homeUc = ref.read(homeUcProvider);
  return homeUc.getContinueListening();
});



//Recent listening provider
final getRecentProvider = FutureProvider<List<RecentListening>>((ref) {
  final watcher = ref.read(homeUcProvider);
  return watcher.getRecentListening();
});
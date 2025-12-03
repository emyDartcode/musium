import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:musium/features/explore/data/data_source/explore_ds.dart';
import 'package:musium/features/explore/data/impl/explore_impl.dart';
import 'package:musium/features/explore/domain/entity/explore_ents.dart';
import 'package:musium/features/explore/domain/use_case/explore_uc.dart';


///Use case provider
final exploreUseCaseProvider = Provider<ExploreUseCase>((ref){
  return ExploreUseCase(ExploreImplementation(ExploreDataSource()));
});


///Top genre ui provider
final topGenresProvider = FutureProvider<List<TopGenres>>((ref){
  final reader = ref.read(exploreUseCaseProvider);
  return reader.getTopGenres();
});

///Browse all UI provider
final browseAllProvider = FutureProvider<List<BrowseAll>>((ref){
  final reader = ref.read(exploreUseCaseProvider);
  return reader.browseAll();
});


///Search query notifier
final searchInputProvider = StateProvider((ref) => '');

///Search notifer
final searchProvider = FutureProvider.family<List<Search>, String> (
  (ref, songTitle){
    if (songTitle.isEmpty) return [];

    final reader = ref.read(exploreUseCaseProvider);
    return reader.searchExplore(songTitle);
  }
);
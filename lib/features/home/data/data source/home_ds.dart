import 'package:musium/features/home/domain/entity/home_entity.dart';

class HomeDs {
  //Get continue listening
  Future<List<ContinueListening>> getContinueListening() async {
    return [
      const ContinueListening(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Coffee & Jazz'
      ),

      const ContinueListening(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Anything Goes'
      ),

      const ContinueListening(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: "Harry's House"
      ),

      const ContinueListening(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Released'
      ),

      const ContinueListening(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Anime OSTs'
      ),

      const ContinueListening(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Lo-Fi Beats'
      ),

    ];
  }

  //Get top mix
  Future<List<TopMix>> getTopMix() async{
    return [
      const TopMix(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Pop mix'
      ),

      const TopMix(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Chill Mix'
      ),

      const TopMix(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'KPop'
      ),
    ];
  }

  //RefreshTop Mix
  Future<List<TopMix>> refreshTopMix() async{
    return await getTopMix(); 
  }

  //Get recent Listening
  Future<List<RecentListening>> getRecentListening() async{
    return[
      const RecentListening(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Pop'
      ),

      const RecentListening(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Pop'
      ),

      const RecentListening(
        imageUrl: 'http://i.pravatar.cc/300', 
        type: 'Pop'
      ),
    ];
  }
}
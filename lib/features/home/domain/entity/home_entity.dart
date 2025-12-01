class ContinueListening{
  final String imageUrl;
  final String type;

  const ContinueListening({
    required this.imageUrl,
    required this.type,
  });
}

class TopMix extends ContinueListening{
  const TopMix({
    required super.imageUrl,
    required super.type,
  });
}

class RecentListening extends ContinueListening{
  const RecentListening({
    required super.imageUrl,
    required super.type,
  });
}

// class Top{
//   final String title;
//   final String artistName;

//   const Top({
//     required this.title,
//     required this.artistName,
//   });
// }


// class TopTrack extends Top{
//   const TopTrack({
//     required this.title
//   })
// }
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(libraryUseCase)
const libraryUseCaseProvider = LibraryUseCaseProvider._();

final class LibraryUseCaseProvider
    extends $FunctionalProvider<LibraryUseCase, LibraryUseCase, LibraryUseCase>
    with $Provider<LibraryUseCase> {
  const LibraryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'libraryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$libraryUseCaseHash();

  @$internal
  @override
  $ProviderElement<LibraryUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LibraryUseCase create(Ref ref) {
    return libraryUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LibraryUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LibraryUseCase>(value),
    );
  }
}

String _$libraryUseCaseHash() => r'becf765a0f9642e199cb4bc96a160103440ef3d4';

/// Get folder

@ProviderFor(getFolders)
const getFoldersProvider = GetFoldersProvider._();

/// Get folder

final class GetFoldersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FolderEntity>>,
          List<FolderEntity>,
          FutureOr<List<FolderEntity>>
        >
    with
        $FutureModifier<List<FolderEntity>>,
        $FutureProvider<List<FolderEntity>> {
  /// Get folder
  const GetFoldersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFoldersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFoldersHash();

  @$internal
  @override
  $FutureProviderElement<List<FolderEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FolderEntity>> create(Ref ref) {
    return getFolders(ref);
  }
}

String _$getFoldersHash() => r'a6e4069d5fa14634a2c9e18e407223fac3598c99';

///Get sub folders

@ProviderFor(getSubFolders)
const getSubFoldersProvider = GetSubFoldersProvider._();

///Get sub folders

final class GetSubFoldersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<SubFolder>>,
          List<SubFolder>,
          FutureOr<List<SubFolder>>
        >
    with $FutureModifier<List<SubFolder>>, $FutureProvider<List<SubFolder>> {
  ///Get sub folders
  const GetSubFoldersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getSubFoldersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getSubFoldersHash();

  @$internal
  @override
  $FutureProviderElement<List<SubFolder>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<SubFolder>> create(Ref ref) {
    return getSubFolders(ref);
  }
}

String _$getSubFoldersHash() => r'c8ac2da13763a32e55958b4b3d9a63aa6657c655';

///Get artists

@ProviderFor(getArtists)
const getArtistsProvider = GetArtistsProvider._();

///Get artists

final class GetArtistsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ArtistEntity>>,
          List<ArtistEntity>,
          FutureOr<List<ArtistEntity>>
        >
    with
        $FutureModifier<List<ArtistEntity>>,
        $FutureProvider<List<ArtistEntity>> {
  ///Get artists
  const GetArtistsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getArtistsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getArtistsHash();

  @$internal
  @override
  $FutureProviderElement<List<ArtistEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ArtistEntity>> create(Ref ref) {
    return getArtists(ref);
  }
}

String _$getArtistsHash() => r'aae477648bd28ed4ddd573d4327210e6625668cf';

///Get albums

@ProviderFor(getAlbums)
const getAlbumsProvider = GetAlbumsProvider._();

///Get albums

final class GetAlbumsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AlbumEntity>>,
          List<AlbumEntity>,
          FutureOr<List<AlbumEntity>>
        >
    with
        $FutureModifier<List<AlbumEntity>>,
        $FutureProvider<List<AlbumEntity>> {
  ///Get albums
  const GetAlbumsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAlbumsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAlbumsHash();

  @$internal
  @override
  $FutureProviderElement<List<AlbumEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AlbumEntity>> create(Ref ref) {
    return getAlbums(ref);
  }
}

String _$getAlbumsHash() => r'4c8f7bbe98673146b2c99bd5a891deaace7e4cec';

///Get playlist

@ProviderFor(getPlaylists)
const getPlaylistsProvider = GetPlaylistsProvider._();

///Get playlist

final class GetPlaylistsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PlaylistEntity>>,
          List<PlaylistEntity>,
          FutureOr<List<PlaylistEntity>>
        >
    with
        $FutureModifier<List<PlaylistEntity>>,
        $FutureProvider<List<PlaylistEntity>> {
  ///Get playlist
  const GetPlaylistsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPlaylistsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPlaylistsHash();

  @$internal
  @override
  $FutureProviderElement<List<PlaylistEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PlaylistEntity>> create(Ref ref) {
    return getPlaylists(ref);
  }
}

String _$getPlaylistsHash() => r'645b92b9c85a9fd4b4fb7a00504e6cf98bcecbc9';

///Get favourite songs

@ProviderFor(getFavouriteSongs)
const getFavouriteSongsProvider = GetFavouriteSongsProvider._();

///Get favourite songs

final class GetFavouriteSongsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FavouriteSongs>>,
          List<FavouriteSongs>,
          FutureOr<List<FavouriteSongs>>
        >
    with
        $FutureModifier<List<FavouriteSongs>>,
        $FutureProvider<List<FavouriteSongs>> {
  ///Get favourite songs
  const GetFavouriteSongsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFavouriteSongsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFavouriteSongsHash();

  @$internal
  @override
  $FutureProviderElement<List<FavouriteSongs>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FavouriteSongs>> create(Ref ref) {
    return getFavouriteSongs(ref);
  }
}

String _$getFavouriteSongsHash() => r'a2cb6e0f3fb0ff814c6647a2f60b0c8389b3bb08';

///Get liked album

@ProviderFor(getLikedAlbums)
const getLikedAlbumsProvider = GetLikedAlbumsProvider._();

///Get liked album

final class GetLikedAlbumsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AlbumEntity>>,
          List<AlbumEntity>,
          FutureOr<List<AlbumEntity>>
        >
    with
        $FutureModifier<List<AlbumEntity>>,
        $FutureProvider<List<AlbumEntity>> {
  ///Get liked album
  const GetLikedAlbumsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getLikedAlbumsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getLikedAlbumsHash();

  @$internal
  @override
  $FutureProviderElement<List<AlbumEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AlbumEntity>> create(Ref ref) {
    return getLikedAlbums(ref);
  }
}

String _$getLikedAlbumsHash() => r'33ab682689586de1f79bf52179aac065032b508d';

///Create folder

@ProviderFor(createFolder)
const createFolderProvider = CreateFolderFamily._();

///Create folder

final class CreateFolderProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  ///Create folder
  const CreateFolderProvider._({
    required CreateFolderFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'createFolderProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$createFolderHash();

  @override
  String toString() {
    return r'createFolderProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return createFolder(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateFolderProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$createFolderHash() => r'78974f7a4bdc215bb84606d5d21a0991d03e9015';

///Create folder

final class CreateFolderFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const CreateFolderFamily._()
    : super(
        retry: null,
        name: r'createFolderProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///Create folder

  CreateFolderProvider call(String folderName) =>
      CreateFolderProvider._(argument: folderName, from: this);

  @override
  String toString() => r'createFolderProvider';
}

///Create subFolder

@ProviderFor(createSubFolder)
const createSubFolderProvider = CreateSubFolderFamily._();

///Create subFolder

final class CreateSubFolderProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  ///Create subFolder
  const CreateSubFolderProvider._({
    required CreateSubFolderFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'createSubFolderProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$createSubFolderHash();

  @override
  String toString() {
    return r'createSubFolderProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return createSubFolder(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateSubFolderProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$createSubFolderHash() => r'07617b669ffbbdfe8596d45eec7ec916d0ebd9ac';

///Create subFolder

final class CreateSubFolderFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const CreateSubFolderFamily._()
    : super(
        retry: null,
        name: r'createSubFolderProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///Create subFolder

  CreateSubFolderProvider call(String subFolderName) =>
      CreateSubFolderProvider._(argument: subFolderName, from: this);

  @override
  String toString() => r'createSubFolderProvider';
}

///Delete folder

@ProviderFor(deleteFolder)
const deleteFolderProvider = DeleteFolderFamily._();

///Delete folder

final class DeleteFolderProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  ///Delete folder
  const DeleteFolderProvider._({
    required DeleteFolderFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'deleteFolderProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deleteFolderHash();

  @override
  String toString() {
    return r'deleteFolderProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return deleteFolder(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteFolderProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deleteFolderHash() => r'82cf5f7668ea94a86d7b504bcdc81850d05b0165';

///Delete folder

final class DeleteFolderFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const DeleteFolderFamily._()
    : super(
        retry: null,
        name: r'deleteFolderProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///Delete folder

  DeleteFolderProvider call(String folderName) =>
      DeleteFolderProvider._(argument: folderName, from: this);

  @override
  String toString() => r'deleteFolderProvider';
}

///Delete subfolder

@ProviderFor(deleteSubFolder)
const deleteSubFolderProvider = DeleteSubFolderFamily._();

///Delete subfolder

final class DeleteSubFolderProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  ///Delete subfolder
  const DeleteSubFolderProvider._({
    required DeleteSubFolderFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'deleteSubFolderProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deleteSubFolderHash();

  @override
  String toString() {
    return r'deleteSubFolderProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return deleteSubFolder(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteSubFolderProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deleteSubFolderHash() => r'4a0ff93114a8e64f19eb932ef539ffbf1100c15e';

///Delete subfolder

final class DeleteSubFolderFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const DeleteSubFolderFamily._()
    : super(
        retry: null,
        name: r'deleteSubFolderProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///Delete subfolder

  DeleteSubFolderProvider call(String subFolderName) =>
      DeleteSubFolderProvider._(argument: subFolderName, from: this);

  @override
  String toString() => r'deleteSubFolderProvider';
}

///Delete Playlist

@ProviderFor(deletePlaylist)
const deletePlaylistProvider = DeletePlaylistFamily._();

///Delete Playlist

final class DeletePlaylistProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  ///Delete Playlist
  const DeletePlaylistProvider._({
    required DeletePlaylistFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'deletePlaylistProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deletePlaylistHash();

  @override
  String toString() {
    return r'deletePlaylistProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return deletePlaylist(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletePlaylistProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deletePlaylistHash() => r'bec39f2b297a316721221b4f7145126eefbbd298';

///Delete Playlist

final class DeletePlaylistFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const DeletePlaylistFamily._()
    : super(
        retry: null,
        name: r'deletePlaylistProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///Delete Playlist

  DeletePlaylistProvider call(String playlistName) =>
      DeletePlaylistProvider._(argument: playlistName, from: this);

  @override
  String toString() => r'deletePlaylistProvider';
}

///Create Playlist

@ProviderFor(createPlaylist)
const createPlaylistProvider = CreatePlaylistFamily._();

///Create Playlist

final class CreatePlaylistProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  ///Create Playlist
  const CreatePlaylistProvider._({
    required CreatePlaylistFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'createPlaylistProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$createPlaylistHash();

  @override
  String toString() {
    return r'createPlaylistProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return createPlaylist(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatePlaylistProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$createPlaylistHash() => r'2c70e51e5c89293275cb575b0e4294a81a445300';

///Create Playlist

final class CreatePlaylistFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const CreatePlaylistFamily._()
    : super(
        retry: null,
        name: r'createPlaylistProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///Create Playlist

  CreatePlaylistProvider call(String playlistName) =>
      CreatePlaylistProvider._(argument: playlistName, from: this);

  @override
  String toString() => r'createPlaylistProvider';
}

///Mark albums as like

@ProviderFor(markAlbumAsLike)
const markAlbumAsLikeProvider = MarkAlbumAsLikeFamily._();

///Mark albums as like

final class MarkAlbumAsLikeProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  ///Mark albums as like
  const MarkAlbumAsLikeProvider._({
    required MarkAlbumAsLikeFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'markAlbumAsLikeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$markAlbumAsLikeHash();

  @override
  String toString() {
    return r'markAlbumAsLikeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return markAlbumAsLike(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MarkAlbumAsLikeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$markAlbumAsLikeHash() => r'cfbbffda3755a4e437e5205923dcb6816c952a15';

///Mark albums as like

final class MarkAlbumAsLikeFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const MarkAlbumAsLikeFamily._()
    : super(
        retry: null,
        name: r'markAlbumAsLikeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///Mark albums as like

  MarkAlbumAsLikeProvider call(String albumId) =>
      MarkAlbumAsLikeProvider._(argument: albumId, from: this);

  @override
  String toString() => r'markAlbumAsLikeProvider';
}

///unmark album as like

@ProviderFor(unmarkAlbumAsLike)
const unmarkAlbumAsLikeProvider = UnmarkAlbumAsLikeFamily._();

///unmark album as like

final class UnmarkAlbumAsLikeProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  ///unmark album as like
  const UnmarkAlbumAsLikeProvider._({
    required UnmarkAlbumAsLikeFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unmarkAlbumAsLikeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unmarkAlbumAsLikeHash();

  @override
  String toString() {
    return r'unmarkAlbumAsLikeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return unmarkAlbumAsLike(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UnmarkAlbumAsLikeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unmarkAlbumAsLikeHash() => r'53eba7b582887267f5f998c5543b24d16fc3c9ae';

///unmark album as like

final class UnmarkAlbumAsLikeFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const UnmarkAlbumAsLikeFamily._()
    : super(
        retry: null,
        name: r'unmarkAlbumAsLikeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///unmark album as like

  UnmarkAlbumAsLikeProvider call(String albumId) =>
      UnmarkAlbumAsLikeProvider._(argument: albumId, from: this);

  @override
  String toString() => r'unmarkAlbumAsLikeProvider';
}

@ProviderFor(addSongToFavourite)
const addSongToFavouriteProvider = AddSongToFavouriteFamily._();

final class AddSongToFavouriteProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  const AddSongToFavouriteProvider._({
    required AddSongToFavouriteFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'addSongToFavouriteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$addSongToFavouriteHash();

  @override
  String toString() {
    return r'addSongToFavouriteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return addSongToFavourite(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AddSongToFavouriteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$addSongToFavouriteHash() =>
    r'fe0f764d393bd477ac7dad11bcda8897855be09b';

final class AddSongToFavouriteFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const AddSongToFavouriteFamily._()
    : super(
        retry: null,
        name: r'addSongToFavouriteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AddSongToFavouriteProvider call(String songId) =>
      AddSongToFavouriteProvider._(argument: songId, from: this);

  @override
  String toString() => r'addSongToFavouriteProvider';
}

///Remove song from

@ProviderFor(removeSongFromFavourite)
const removeSongFromFavouriteProvider = RemoveSongFromFavouriteFamily._();

///Remove song from

final class RemoveSongFromFavouriteProvider
    extends $FunctionalProvider<AsyncValue<Unit>, Unit, FutureOr<Unit>>
    with $FutureModifier<Unit>, $FutureProvider<Unit> {
  ///Remove song from
  const RemoveSongFromFavouriteProvider._({
    required RemoveSongFromFavouriteFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'removeSongFromFavouriteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$removeSongFromFavouriteHash();

  @override
  String toString() {
    return r'removeSongFromFavouriteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Unit> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Unit> create(Ref ref) {
    final argument = this.argument as String;
    return removeSongFromFavourite(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RemoveSongFromFavouriteProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$removeSongFromFavouriteHash() =>
    r'8d64b8abcb3b30800bd083e4958429d801181ee6';

///Remove song from

final class RemoveSongFromFavouriteFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Unit>, String> {
  const RemoveSongFromFavouriteFamily._()
    : super(
        retry: null,
        name: r'removeSongFromFavouriteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///Remove song from

  RemoveSongFromFavouriteProvider call(String songId) =>
      RemoveSongFromFavouriteProvider._(argument: songId, from: this);

  @override
  String toString() => r'removeSongFromFavouriteProvider';
}

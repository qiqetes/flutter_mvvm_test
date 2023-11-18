import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service.g.dart';

@riverpod
class FavouritesController extends _$FavouritesController {
  Future<List<int>> _getLocalFavourites() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    return [126];
  }

  @override
  Future<List<int>> build() async {
    return await _getLocalFavourites();
  }

  bool isFavourite(int landmarkId) {
    final favourites = state.valueOrNull ?? [];
    return favourites.contains(landmarkId);
  }

  void toggleFavourite(int landmarkId) {
    final favourites = state.valueOrNull ?? [];
    if (favourites.contains(landmarkId)) {
      favourites.remove(landmarkId);
    } else {
      favourites.add(landmarkId);
    }
    state = AsyncData(favourites);
  }
}

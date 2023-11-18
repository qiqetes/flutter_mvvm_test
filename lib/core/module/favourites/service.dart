import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'service.g.dart';

@riverpod
class FavouritesController extends _$FavouritesController {
  Future<List<int>> _getLocalFavourites() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final List<String> favourites =
        sharedPrefs.getStringList('favouriteLandmarks') ?? [];
    try {
      return favourites.map((e) => int.parse(e)).toList();
    } catch (e) {
      return [];
    }
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
    _saveLocalFavourites(favourites);
  }

  Future<void> _saveLocalFavourites(List<int> favourites) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setStringList(
        'favouriteLandmarks', favourites.map((e) => e.toString()).toList());
  }
}

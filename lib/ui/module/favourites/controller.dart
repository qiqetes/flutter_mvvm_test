import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/ui/module/home/view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'controller.g.dart';

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

@riverpod
class FavouritesVM extends _$FavouritesVM {
  @override
  List<Landmark> build() {
    var favouriteIds =
        ref.watch(favouritesControllerProvider).valueOrNull ?? [];
    var landmarks = ref.watch(homeVMProvider).valueOrNull ?? [];
    return landmarks
        .where((landmark) => favouriteIds.contains(landmark.idFicha))
        .toList();
  }

  void toggleFavourite(int landmarkId) {
    ref.read(favouritesControllerProvider.notifier).toggleFavourite(landmarkId);
  }
}

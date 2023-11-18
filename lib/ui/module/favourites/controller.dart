import 'package:mvvm_test/core/module/favourites/service.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/ui/module/home/view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'controller.g.dart';

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

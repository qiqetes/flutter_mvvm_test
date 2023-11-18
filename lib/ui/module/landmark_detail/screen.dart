import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/core/module/favourites/service.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/core/module/landmark_detail/landmark_detail.dart';
import 'package:mvvm_test/ui/module/favourites/controller.dart';
import 'package:mvvm_test/ui/module/landmark_detail/view_model.dart';
import 'package:mvvm_test/ui/module/landmark_detail/widgets/landmark_detail_info.dart';
import 'package:mvvm_test/ui/module/widgets/lateral_menu/lateral_menu.dart';

class LandmarkDetailScreen extends StatelessWidget {
  const LandmarkDetailScreen({super.key, required this.landmark});
  final Landmark landmark;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const LateralMenu(currentPath: '/landmark_detail'),
      appBar: AppBar(title: Text(landmark.nombre)),
      body: Consumer(
        builder: (context, ref, child) {
          final landmarkDetail = ref.watch(landmarkDetailProvider(landmark));
          return _LandmarkDetailBody(landmarkDetail: landmarkDetail);
        },
      ),
    );
  }
}

class _LandmarkDetailBody extends StatelessWidget {
  const _LandmarkDetailBody({required this.landmarkDetail});
  final LandmarkDetail landmarkDetail;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _Thumbnail(landmarkDetail: landmarkDetail),
            const SizedBox(height: 15),
            LandmarkDetailInfo(landmarkDetail: landmarkDetail),
            _FavButton(landmarkId: landmarkDetail.idFicha),
          ],
        ),
      ),
    );
  }
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail({required this.landmarkDetail});
  final LandmarkDetail landmarkDetail;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(imageUrl: landmarkDetail.urlImagen);
  }
}

class _FavButton extends ConsumerWidget {
  const _FavButton({required this.landmarkId});
  final int landmarkId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isFav =
        ref.watch(favouritesControllerProvider).value?.contains(landmarkId) ??
            false;
    return TextButton(
      onPressed: () => ref
          .read(favouritesControllerProvider.notifier)
          .toggleFavourite(landmarkId),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isFav ? Icons.favorite : Icons.favorite_border,
            // color: isFav ? Colors.black : Colors.white,
          ),
          const SizedBox(width: 6),
          Text(isFav ? "Quitar de favoritos" : "Añadir a favoritos"),
        ],
      ),
    );
  }
}

import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/core/module/favourites/service.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/ui/module/landmark_detail/screen.dart';
import 'package:mvvm_test/ui/resources/theme.dart';

class LandmarkCard extends StatelessWidget {
  const LandmarkCard({super.key, required this.landmark, this.fav = false});
  final Landmark landmark;
  final bool fav;

  @override
  Widget build(BuildContext context) {
    Decoration outerDecoration() => BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.black, width: 1),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, 3),
            ),
          ],
        );

    return OpenContainer(
      closedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.black, width: 1)),
      openBuilder: (_, __) => LandmarkDetailScreen(landmark: landmark),
      closedBuilder: (_, openContainer) => InkWell(
        onTap: openContainer,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Container(
            decoration: outerDecoration(),
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Thumbnail(landmark: landmark, fav: fav),
                  const SizedBox(height: 15),
                  _InfoText(landmark: landmark),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoText extends StatelessWidget {
  const _InfoText({
    required this.landmark,
  });

  final Landmark landmark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(landmark.nombre, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 5),
        Text(landmark.descripcionCorta),
      ],
    );
  }
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail({required this.landmark, this.fav = false});
  final Landmark landmark;
  final bool fav;

  Widget _buildImage() => CachedNetworkImage(
        placeholder: (context, url) => const Center(
          child: SizedBox(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          ),
        ),
        imageUrl: landmark.urlImagen,
        width: double.infinity,
      );

  Widget _buildFavPill() => Consumer(
        // FIXME: pass parameter or use this consumer?
        builder: (_, ref, __) {
          final favourites = ref.watch(favouritesControllerProvider).value;
          final isFav = favourites?.contains(landmark.idFicha) ?? false;

          if (isFav) {
            return const Positioned(
              top: 15,
              right: 15,
              child: _FavPill(),
            );
          } else {
            return const SizedBox();
          }
        },
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Stack(
          children: [
            _buildImage(),
            _buildFavPill(),
            Positioned(
              bottom: 20,
              left: 20,
              child: _LocationPill(
                lat: landmark.latitud,
                long: landmark.longitud,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FavPill extends StatelessWidget {
  const _FavPill();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kRedColor,
        borderRadius: const BorderRadius.all(Radius.circular(200)),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.fromLTRB(8, 9, 8, 7),
      child: const Icon(Icons.favorite),
    );
  }
}

class _LocationPill extends StatelessWidget {
  const _LocationPill({required this.lat, required this.long});
  final double lat;
  final double long;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kYellowColor,
        borderRadius: const BorderRadius.all(Radius.circular(200)),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.fromLTRB(8, 5, 10, 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.location_on),
          const SizedBox(width: 5),
          Text(
            '${lat.toStringAsFixed(4)},  ${long.toStringAsFixed(4)}',
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

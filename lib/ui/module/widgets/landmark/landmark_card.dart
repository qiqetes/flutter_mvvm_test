import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/ui/module/landmark_detail/screen.dart';

class LandmarkCard extends StatelessWidget {
  const LandmarkCard({super.key, required this.landmark});
  final Landmark landmark;

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
              offset: Offset(0, 2),
            ),
          ],
        );

    return OpenContainer(
      closedShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      openBuilder: (_, __) => LandmarkDetailScreen(landmark: landmark),
      closedBuilder: (_, openContainer) => InkWell(
        onTap: openContainer,
        child: Container(
          decoration: outerDecoration(),
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Thumbnail(landmark: landmark),
              const SizedBox(height: 15),
              _InfoText(landmark: landmark),
            ],
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
  const _Thumbnail({required this.landmark});
  final Landmark landmark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
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
            CachedNetworkImage(
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              imageUrl: landmark.urlImagen,
              width: double.infinity,
            ),
            const Positioned(
              top: 15,
              right: 15,
              child: _FavPill(),
            ),
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
        color: const Color(0xffFFA69E),
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
        color: const Color(0xffFFA69E),
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
          Text('${lat.toStringAsFixed(4)},  ${long.toStringAsFixed(4)}'),
        ],
      ),
    );
  }
}

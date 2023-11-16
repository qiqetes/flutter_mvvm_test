import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';

class LandmarkCard extends StatelessWidget {
  const LandmarkCard({super.key, required this.landmark});
  final Landmark landmark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ThumbNail(landmark: landmark),
          const SizedBox(height: 15),
          _InfoText(landmark: landmark),
        ],
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

class _ThumbNail extends StatelessWidget {
  const _ThumbNail({required this.landmark});
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
        color: const Color.fromARGB(255, 236, 192, 207),
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
        color: const Color.fromARGB(255, 236, 192, 207),
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
          Text('$lat,  $long'),
        ],
      ),
    );
  }
}

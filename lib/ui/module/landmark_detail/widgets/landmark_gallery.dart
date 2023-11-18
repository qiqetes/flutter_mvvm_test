import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';

class LandmarkGallery extends StatelessWidget {
  const LandmarkGallery({super.key, required this.imageUrls});
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    // TODO: ugly, maybe use diff package
    return GalleryImage(
      showAppBar: true,
      galleryBackgroundColor: Colors.white,
      numOfShowImages: min(imageUrls.length, 3),
      imageUrls: imageUrls,
      titleGallery: "Galería de imágenes",
    );
  }
}

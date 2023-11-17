import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/core/module/landmark_detail/landmark_detail.dart';
import 'package:mvvm_test/ui/module/landmark_detail/view_model.dart';
import 'package:mvvm_test/ui/module/landmark_detail/widgets/landmark_detail_info.dart';

class LandmarkDetailScreen extends StatelessWidget {
  const LandmarkDetailScreen({super.key, required this.landmark});
  final Landmark landmark;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return SingleChildScrollView(
      child: Column(
        children: [
          _Thumbnail(landmarkDetail: landmarkDetail),
          const SizedBox(height: 15),
          LandmarkDetailInfo(landmarkDetail: landmarkDetail),
        ],
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

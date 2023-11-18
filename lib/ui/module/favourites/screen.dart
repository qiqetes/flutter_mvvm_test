import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/ui/module/favourites/controller.dart';
import 'package:mvvm_test/ui/module/widgets/landmark/landmarks_list.dart';
import 'package:mvvm_test/ui/module/widgets/lateral_menu/lateral_menu.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tus Favoritos'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final landmarks = ref.watch(favouritesVMProvider);

          return LandmarksList(
            landmarks: landmarks,
            emptyMessage:
                'No has añadido ningún sitio a favoritos, León es muy bonito, algo te tendrá que gustar...',
          );
        },
      ),
      drawer: const LateralMenu(currentPath: '/favourites'),
    );
  }
}

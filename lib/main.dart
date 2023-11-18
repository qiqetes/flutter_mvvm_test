import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/ui/module/favourites/screen.dart';
import 'package:mvvm_test/ui/module/home/screen.dart';
import 'package:mvvm_test/ui/resources/theme.dart';

void main() {
  runApp(const ProviderScope(child: Application()));
}

class Application extends ConsumerWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeData theme = ref.watch(themeControllerProvider);

    return MaterialApp(
      theme: theme,
      home: const Scaffold(body: HomeScreen()),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const HomeScreen());
          case '/favourites':
            return MaterialPageRoute(builder: (_) => const FavouritesScreen());
          default:
            return null;
        }
      },
    );
  }
}

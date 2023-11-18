import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/ui/module/favourites/screen.dart';
import 'package:mvvm_test/ui/module/home/screen.dart';

void main() {
  runApp(const ProviderScope(child: Application()));
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: Border(bottom: BorderSide(color: Colors.black, width: 1)),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black),
            shadowColor: MaterialStateProperty.all(Colors.black),
            backgroundColor: MaterialStateProperty.all(const Color(0xffFF7051)),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),
                side: const BorderSide(color: Colors.black, width: 1),
              ),
            ),
            padding: MaterialStateProperty.all(
                const EdgeInsets.fromLTRB(14, 10, 16, 10)),
          ),
        ),
        drawerTheme: const DrawerThemeData(
          elevation: 0,
          shape: Border(right: BorderSide(color: Colors.black, width: 1)),
        ),
      ),
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

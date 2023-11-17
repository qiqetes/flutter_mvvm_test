import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/ui/module/home/screen.dart';

void main() {
  runApp(const ProviderScope(child: Application()));
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: HomeScreen()),
    );
  }
}

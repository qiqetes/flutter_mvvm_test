// Lateral menu widget go to home or Favourites

import 'package:flutter/material.dart';

class LateralMenu extends StatelessWidget {
  const LateralMenu({super.key, required this.currentPath});
  final String currentPath;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _MenuItem(
            title: 'Listado de sitios',
            icon: Icons.home,
            path: '/',
            currentPath: currentPath,
          ),
          _MenuItem(
            title: 'Tus favoritos',
            icon: Icons.favorite,
            path: '/favourites',
            currentPath: currentPath,
          ),
        ],
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    required this.title,
    required this.icon,
    required this.path,
    required this.currentPath,
  });
  final String title;
  final IconData icon;
  final String path;
  final String currentPath;
  bool get isSelected => path == currentPath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: isSelected ? Colors.black : Colors.grey),
      title: Text(title),
      onTap: () async {
        if (isSelected) return;
        Scaffold.of(context).closeDrawer();
        Navigator.of(context).pushReplacementNamed(path);
      },
    );
  }
}

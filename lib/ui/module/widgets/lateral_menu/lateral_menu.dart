// Lateral menu widget go to home or Favourites

import 'package:flutter/material.dart';

class LateralMenu extends StatelessWidget {
  const LateralMenu({super.key, required this.currentPath});
  final String currentPath;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
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
      leading: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(200)),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, blurRadius: 0, offset: Offset(1, 1))
            ],
          ),
          child: Icon(icon, color: isSelected ? Colors.black : Colors.grey)),
      title: Text(title),
      onTap: () async {
        if (isSelected) return;
        Scaffold.of(context).closeDrawer();
        Navigator.of(context).pushReplacementNamed(path);
      },
    );
  }
}

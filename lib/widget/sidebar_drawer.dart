import 'package:flutter/material.dart';

class CreateDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          SafeArea(
            child: DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png',
                      ),
                      fit: BoxFit.cover)),
              child: Text(
                'Drawer Header',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            title: const Text('Diseño Basico'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'basico');
            },
          ),
          ListTile(
            title: const Text('Scroll con Pageview Vertical'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'scroll');
            },
          ),
          ListTile(
            title: const Text('Gradientes y Botones'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'botones');
            },
          ),
        ],
      ),
    );
  }
}

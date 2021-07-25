import 'package:design_flutter/widget/sidebar_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Designs Flutter'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
      drawer: CreateDrawer(),
    );
  }
}

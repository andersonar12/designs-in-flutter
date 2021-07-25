import 'package:design_flutter/widget/sidebar_drawer.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:scroll_glow_color/widget/scroll_glow_color.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diseño Basico'),
        centerTitle: true,
      ),
      drawer: CreateDrawer(),
      body: ScrollGlowColor(
        color: Colors
            .blue, // use a custom color instead default accentColor theme color
        hideGlow: false,
        child: SingleChildScrollView(
            child: Column(children: [
          _primerWidget(),
          _segundoWidget(),
          _tercerWidget(),
          _cuartoWidget(),
          _tercerWidget(),
          _primerWidget(),
          _cuartoWidget(),
          _tercerWidget(),
          _cuartoWidget()
        ])),
      ),
    );
  }

  Widget _primerWidget() {
    return Image(
        image: NetworkImage(
            'https://cdn2.wanderlust.co.uk/media/1002/cropped-header.jpg?anchor=center&mode=crop&width=1200&height=0&rnd=131656621890000000'));
  }

  Widget _segundoWidget() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Laguna con arbol',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text('Paisaje de alguna parte de Asia ',
                      style: estiloSubTitulo)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30),
            Text(
              '41',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Widget _tercerWidget() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      _accion(Icons.call, 'Call'),
      _accion(Icons.near_me, 'Route'),
      _accion(Icons.share, 'Share')
    ]);
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40),
        SizedBox(height: 5),
        Text(
          texto,
          style: TextStyle(fontSize: 15, color: Colors.blue),
        )
      ],
    );
  }

  Widget _cuartoWidget() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

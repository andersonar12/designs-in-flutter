import 'dart:math';

import 'package:design_flutter/widget/sidebar_drawer.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scroll_glow_color/widget/scroll_glow_color.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diseño Basico'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(52, 54, 101, 1),
        ),
        drawer: CreateDrawer(),
        body: Stack(
          children: [
            _fondoApp(),
            ScrollGlowColor(
              color: Color.fromRGBO(60, 60, 110, 1),
              child: SingleChildScrollView(
                child: Column(
                  children: [_titulos(), _botonesRedondos()],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(52, 54, 101, 1),
        Color.fromRGBO(35, 37, 57, 1)
      ], begin: FractionalOffset(0, 0.4), end: FractionalOffset(0, 1))),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(238, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ]),
            borderRadius: BorderRadius.circular(80)),
      ),
    );

    return Stack(
      children: [gradiente, Positioned(top: -100, child: cajaRosa)],
    );
  }

  Widget _titulos() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Classify Transaction',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Classify this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ))
        ],
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1),
          primaryColor: Colors.pinkAccent,
        ),
        child: BottomNavigationBar(
          selectedFontSize: 0,
          selectedItemColor: Color.fromRGBO(116, 117, 152, 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bubble_chart, size: 30), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle, size: 30), label: '')
          ],
        ));
  }

  Widget _botonesRedondos() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedodneado(
              Colors.blue, Icons.account_balance_outlined, 'Balance'),
          _crearBotonRedodneado(Colors.orange,
              Icons.account_balance_wallet_sharp, 'Historial Pagos')
        ]),
        TableRow(children: [
          _crearBotonRedodneado(
              Colors.deepPurpleAccent, Icons.tab, 'Enviar abono'),
          _crearBotonRedodneado(Colors.brown, Icons.accessibility, 'Usuario')
        ]),
        TableRow(children: [
          _crearBotonRedodneado(Colors.red, Icons.settings, 'Configuracion'),
          _crearBotonRedodneado(
              Colors.blueGrey, Icons.unsubscribe_rounded, 'Notificaciones')
        ]),
        TableRow(children: [
          _crearBotonRedodneado(
              Colors.lightBlue, Icons.date_range_outlined, 'Calendario'),
          _crearBotonRedodneado(Colors.deepOrange, Icons.exit_to_app, 'Salir')
        ]),
      ],
    );
  }

  Widget _crearBotonRedodneado(Color color, IconData icono, String texto) {
    return Container(
      height: 180,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 5,
          ),
          CircleAvatar(
              radius: 35,
              backgroundColor: color,
              child: Icon(
                icono,
                color: Colors.white,
                size: 30,
              )),
          Text(
            texto,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}

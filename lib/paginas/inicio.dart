import 'package:clone_netflix/componentes/cartel_principal.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Cartel_Principal(),
        ],
      ),
    );
  }
}

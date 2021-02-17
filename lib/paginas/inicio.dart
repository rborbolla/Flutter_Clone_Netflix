import 'package:clone_netflix/componentes/cartel_principal.dart';
import 'package:clone_netflix/componentes/item_redondeado.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Cartel_Principal(),
          Container(
            height: 110.0,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              ItemRedondeado(),
              ItemRedondeado(),
              ItemRedondeado(),
              ItemRedondeado(),
              ItemRedondeado(),
            ]),
          )
        ],
      ),
    );
  }
}

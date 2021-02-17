import 'package:clone_netflix/componentes/cartel_principal.dart';
import 'package:clone_netflix/componentes/item_redondeado.dart';
import 'package:clone_netflix/componentes/item_img.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Cartel_Principal(),
          this.listaHorizontal('Avances', ItemRedondeado(), 9),
          SizedBox(
            height: 10.0,
          ),
          this.listaHorizontal('Programas sobre viajes', ItemImg(), 10),
          SizedBox(
            height: 10.0,
          ),
          this.listaHorizontal('Tendencias', ItemImg(), 10),
          SizedBox(
            height: 10.0,
          ),
          this.listaHorizontal('Mi lista', ItemImg(), 10),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white24,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem2
              icon: Icon(Icons.home),
              title: Text(
                'Inicio',
                style: TextStyle(fontSize: 12.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(
                'Buscar',
                style: TextStyle(fontSize: 12.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined),
              title: Text(
                'Proximamente',
                style: TextStyle(fontSize: 12.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.download_rounded),
              title: Text(
                'Descargas',
                style: TextStyle(fontSize: 12.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              title: Text(
                'Más',
                style: TextStyle(fontSize: 12.0),
              )),
        ]);
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        )
      ],
    );
  }
}

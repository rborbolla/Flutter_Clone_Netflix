import 'package:clone_netflix/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class Cartel_Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(children: <Widget>[
      Image.network(
        "https://scontent.fmex33-1.fna.fbcdn.net/v/t1.0-9/82202555_10158036307752722_4080656403683868672_n.png?_nc_cat=108&ccb=2&_nc_sid=e3f864&_nc_ohc=0uk6c8E2H7MAX8CtEYq&_nc_ht=scontent.fmex33-1.fna&oh=79e3c8929264316383e8644674512c44&oe=60472A91",
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black38, Colors.black]))),
      SafeArea(child: NavBarSuperior()),
    ]);
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Thriller',
          style: TextStyle(color: Colors.white, fontSize: 13.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Suspenso',
          style: TextStyle(color: Colors.white, fontSize: 13.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Terror',
          style: TextStyle(color: Colors.white, fontSize: 13.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Acción',
          style: TextStyle(color: Colors.white, fontSize: 13.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  "Mi lista",
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                ),
              ],
            ),
            FlatButton.icon(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              label: Text('Reproducir'),
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  "Información",
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                ),
              ],
            ),
          ],
        ));
  }
}

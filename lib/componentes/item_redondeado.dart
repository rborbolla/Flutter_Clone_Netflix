import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110.0),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 2.0,
                  )),
              child: ClipOval(
                  child: Image.network(
                      'https://4.bp.blogspot.com/-8wxXZXSooSo/WpydtAgcw5I/AAAAAAAALAE/QwrYraZu3NQSJbwA7A7DxpNOCiZIxHsRACLcBGAs/s640/2016-Batman-Begins-The-Dark-Knight-Movie-Poster-Silk-Wall-Home-Decorative-painting-Cadre-Photo-Moderne.jpg_640x640.jpg',
                      fit: BoxFit.cover))),
          Image.network(
              'https://p.kindpng.com/picc/s/739-7396111_the-dark-knight-logo-png-dark-knight-logo.png',
              width: 50.0)
        ],
      ),
      SizedBox(
        width: 10.0,
      )
    ]);
  }
}

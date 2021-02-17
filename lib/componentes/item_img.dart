import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
            'https://upload.wikimedia.org/wikipedia/en/5/58/TheOffice_S7_DVD.jpg',
            width: 100.0,
            fit: BoxFit.cover),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

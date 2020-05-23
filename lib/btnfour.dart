import 'package:flutter/material.dart';

class BtnFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
        shape: StadiumBorder(),
        padding: EdgeInsets.all(22.0),
        color: Colors.grey,
        onPressed: () {},
        child: Text(
          'Resources',
          style: TextStyle(
              color: Color(0xff2962ff),
              fontSize: 28.0,
              fontStyle: FontStyle.italic),
        ));
  }
}

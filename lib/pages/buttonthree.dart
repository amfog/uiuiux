import 'package:flutter/material.dart';
class ButtonThree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Column(
          children: <Widget>[
            Container(child:
            FlatButton(onPressed: (){}, child: Text('Rate Us')),)
          ],
        ),
      ),
    );
  }
}

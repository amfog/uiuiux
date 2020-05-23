import 'package:flutter/material.dart';


class SC1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Install Flutter"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Text(
              'Select the operation system on which you are installing flutter :',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey),
            ),
            Text(''),
            GestureDetector(
              child: FlatButton(
                  child: Text(
                    'Windows',
                    style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                        fontSize: 30.0),
                  ),
                  onPressed:
                  (){}

                  ),

            )
          ],
        ),
      ),
    );
  }
}
// pubspec.yaml update depend  url_launcher: ^5.1.0


import 'package:flutter/material.dart';

class InsideOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('inside flutter'),
        ),
        body: ListView(
          children: <Widget>[Text('how this page was made')
            , Card(child: Image.asset('assets/flutter1.png'),), Card(
              child: Text('Source Code'),
            ),
            Container(child: Row(children: <Widget>[
              Text('Scroll Down')
              ],)
              ,)
            , Card(child: Text('wow')
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Text('this is row'),
                  Image.asset('assets/flutter1.png'),
                  Text('row is this'),
                  Image.asset('assets/dart.png')
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.pop(context, (context) => context())),
      ),
    );
  }
}
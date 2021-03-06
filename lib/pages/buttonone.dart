import 'package:flutter/material.dart';

import './sc1.dart';
import '1buttonone.dart';
class ButtonOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            shape: StadiumBorder(),
            title: Text(
              'Flutter',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 30.0),
            ),
          ),
          body: Center(
            child: ListView(
              children: <Widget>[
                Container(

                    child: Image.asset(
                      'assets/flutterlogo.png',
                      fit: BoxFit.fitHeight,
                    )),


                //soon to be fixed
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>SC1())),
                    child: Text(
                      'SC1',
                      style: TextStyle(color: Colors.blue),
                    )),
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      'SC2',
                      style: TextStyle(color: Colors.blue),
                    )),
                FlatButton(
                  shape: StadiumBorder(),
                  color: Colors.grey,
                  onPressed: () {},
                  child: Text(
                    'SC3',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      'SC4',
                      style: TextStyle(color: Colors.blue),
                    )),
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      'SC5',
                      style: TextStyle(color: Colors.blue),
                    )),
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      'SC6',
                      style: TextStyle(color: Colors.blue),
                    )),
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      'SC7',
                      style: TextStyle(color: Colors.blue),
                    )),
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      'SC8',
                      style: TextStyle(color: Colors.blue),
                    )),
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      'SC9',
                      style: TextStyle(color: Colors.blue),
                    )),
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      'SC10',
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            ),
          ),
          bottomNavigationBar: FlatButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => InsideOne())),
            color: Colors.grey,
            child: Text(
              'learn more',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Text('back'),
            onPressed: () => Navigator.pop(context, (context) => context),
          )));
}

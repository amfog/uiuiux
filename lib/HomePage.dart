import 'dart:async';

import 'package:flutter/material.dart';

//import './btnfive.dart';
//import './btnfour.dart';

//import './btnthree.dart';
import './btntwo.dart';
import 'btnone.dart'; //7.25;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, snapshot) => MaterialApp(
        theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              Image.asset('assets/flutter1.png'),
              StreamBuilder<String>(
                stream: null,
                builder: (context, snapshot) {
                  return IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        showSearch(context: context, delegate: DataSearch());
                      });
                }
              )
            ],
            title: Text(
              'Home',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            ),
          ),
          body: ListView(
            children: <Widget>[
              Card(
                child: Image.asset(
                  'assets/fldarr.png',
                ),
              ),
              //1

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0)
                //,decoration:FlutterLogoDecoration(lightColor: Colors.brown
                ,
                child: BtnOne(),
              ),

              //2

              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: BtnTwo()),
              Divider(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/flutter1.png',
                      height: 45.0,
                    ),
                    Text(
                      'How TO ?!',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.blue,
                          fontStyle: FontStyle.italic),
                    ),
                    Image.asset(
                      'assets/dart2.png',
                      height: 45.0,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.storage,
                          color: Colors.blue,
                          size: 35.0,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
              //5
              Divider(
                height: 20.0,
              ),
              // Container(
              // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              //child: BtnFive(),
              // )
              //4

              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/flutter1.png',
                      height: 45.0,
                    ),
                    Text(
                      'Resources',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.blue,
                          fontStyle: FontStyle.italic),
                    ),
                    Image.asset(
                      'assets/dart2.png',
                      height: 45.0,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.storage,
                          color: Colors.blue,
                          size: 35.0,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),

              //3
              Divider(
                height: 20.0,
              ),
//              Container(
//                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//                child: BtnThree(),
//                color: Color(0xff81d4fa),
//              ),
              Divider(
                height: 20.0,
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Card(
                  child: Image.asset(
                    'assets/donkey.jpg',
                  ),
                ),
                ListTile(
                  title: Text('Dark Theme'),
                  trailing: Switch(
                    value: snapshot.data,
                    onChanged: bloc.changeTheme,
                  ),
                ),
                ListTile(
                  title: Text('Rate App'),
                  trailing: Icon(Icons.thumbs_up_down),
                ),
                ListTile(
                  title: Text('More Apps'),
                  trailing: Icon(Icons.apps),
                ),
                new Divider(),
                new ListTile(
                  title: Text('EXIT'),
                  trailing: Icon(Icons.cancel),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Bloc {
  // ignore: close_sinks
  final _themeController = StreamController<bool>();

  get changeTheme => _themeController.sink.add;

  get darkThemeEnabled => _themeController.stream;
}

final bloc = Bloc();

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Cairo",
    "London",
    "mumbai",
    "shanghai",
    "okinawa",
    "Roma",



  ];

  final recentCities = ["Cairo", "London"];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(200.0),
        child: Card(
          color: Colors.red,
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
            text: TextSpan(
                text: suggestionsList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionsList[index].substring(query.length),
                  style: TextStyle(
                    color: Colors.blue,
                  ))
            ])),
      ),
      itemCount: suggestionsList.length,
    );
  }
}



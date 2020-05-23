import 'package:flutter/material.dart';
import './pages/buttontwo.dart';

class BtnTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/dart2.png'),
        ),
        title: Text(
          'Dart',
          style: TextStyle(fontSize: 25.0, color: Colors.blue),
        ),
        trailing: FlatButton(
            child: Icon(Icons.storage, size: 35.0, color: Colors.blue),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ButtonTwo()),
                )));
  }
}
//11:18

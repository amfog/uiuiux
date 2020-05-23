import 'package:flutter/material.dart';
import 'package:uiuiux/pages/buttonone.dart';

// in each every single file we need to import flutter material package

// importing the page to be able to navigate to it

// creating a class (blue print) to our button
class BtnOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // changing the button settings from here colors postion adding a text etc
    return Container(
      child: ListTile(

          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/flutter1.png'),
          ),
          title: Text(
            'Flutter',
            style: TextStyle(color: Colors. blue, fontSize: 25.0),
          ),
          trailing: FlatButton(
              child: Icon(
                Icons.storage,
                color: Colors.blue,
                size: 35.0,
              ),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ButtonOne()),
                  ))),
    );
  }
}

//7.10 . 7/25
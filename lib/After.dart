import 'package:flutter/material.dart';
import 'package:app_v2/Menu.dart';

class After extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text('Menu'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/img/circular.jpg"),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('Adm'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: Text('Bienvenido'),
      ),
    );
  }
}

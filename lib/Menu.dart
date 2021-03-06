import 'package:app_v2/menu/Lateral.dart';
import 'package:flutter/material.dart';
import 'package:app_v2/menu/calculo.dart';
import 'package:app_v2/menu/Replanteo.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            decoration: BoxDecoration(
                //color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/img/x2.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Niveles de Escavación'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Calculo(),
              ))
            },
          ),
          /*ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Laterales'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Lateral(),
              ))
            },
          ),*/
          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text('Opciones'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

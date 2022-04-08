import 'package:app_navigation/principal.dart';
import 'package:app_navigation/error.dart';
import 'package:app_navigation/second_route.dart';
import 'package:app_navigation/first_route.dart';
import 'package:flutter/material.dart';

class botones extends StatefulWidget{
  @override
  State<botones> createState() => _botones();
}

class _botones extends State<botones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A dónde quieres ir?'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('Aqui usaremos las rutas')],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            heroTag: 'Services',
            child: Text('S'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Services()),
              );
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: 'Team',
            child: Text('T'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Team()),
              );
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: 'error',
            child: Text('E'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => error()),
              );
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            backgroundColor: Colors.lightGreen,
            heroTag: 'principal',
            child: Icon(Icons.play_arrow),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => principal()),
              );
            },
          ),
        ],
      ),
    );
  }
}
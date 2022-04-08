import 'package:app_navigation/error.dart';
import 'package:app_navigation/second_route.dart';
import 'package:app_navigation/first_route.dart';
import 'package:app_navigation/botones.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'App Navigation',
    home: principal(),
  ));
}

class principal extends StatefulWidget{
  @override
  State<principal> createState() => _principal();
}

class _principal extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor:Colors.orangeAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => botones(),
            ),
          );
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Aqui usamos la navegación directa'),
            Text('Tap en el boton'),
          ],
        ),
      ),
    );
  }
}
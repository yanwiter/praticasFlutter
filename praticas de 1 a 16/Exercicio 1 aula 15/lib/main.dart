import 'package:aula15ex01/director/secundaria.dart';
import 'package:flutter/material.dart';
import 'director/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (_) => Home(),
      '/secundaria': (_)=> Secundaria(),
    }
  ));
}


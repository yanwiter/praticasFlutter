import 'package:aula12ex01/quarta.dart';
import 'package:aula12ex01/segunda.dart';
import 'package:aula12ex01/terceira.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (_) => Home(),
     '/segunda': (_) => Segunda(),
     '/terceira': (_) => Terceira(),
     '/quarta': (_) => Quarta(),

  },
  ),
  );
}




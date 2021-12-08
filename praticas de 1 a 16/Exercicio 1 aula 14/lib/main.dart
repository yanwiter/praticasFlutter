import 'package:aula14ex01/telas/tela.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => PrimeiraTela(),
      '/segunda': (context) => SegundaTela(),
      '/terceira': (context) => TerceiraTela(),
      },
    ),
);
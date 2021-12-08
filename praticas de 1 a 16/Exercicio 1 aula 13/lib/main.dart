import 'package:flutter/material.dart';

import 'PrimeiraTela.dart';
import 'QuartaTela.dart';
import 'SegundaTela.dart';
import 'TerceiraTela.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => PrimeiraTela(),
          '/segunda': (context) => SegundaTela(),
          '/terceira': (context) => TerceiraTela(),
          '/quarta': (context) => QuartaTela(),
        },
      ),
    );

import 'package:flutter/material.dart';

import 'Botao.dart';
import 'Corpo.dart';
import 'Tela.dart';

class SegundaTela extends StatelessWidget {
  const SegundaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('2');
    Botoes botoes = Botoes('terceira');
    return Tela('Segunda Tela', corpo, botoes);
  }
}

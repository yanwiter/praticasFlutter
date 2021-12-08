import 'package:flutter/material.dart';


import 'Botao.dart';
import 'Corpo.dart';
import 'Tela.dart';

class QuartaTela extends StatelessWidget {
  const QuartaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('4');
    Botoes botoes = Botoes('segunda');
    return Tela('Quarta Tela', corpo, botoes);
  }
}

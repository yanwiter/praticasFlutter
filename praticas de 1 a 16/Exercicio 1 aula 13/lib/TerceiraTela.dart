import 'package:flutter/material.dart';

import 'Botao.dart';
import 'Corpo.dart';
import 'Tela.dart';

class TerceiraTela extends StatelessWidget {
  const TerceiraTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('3');
    Botoes botoes = Botoes('quarta');
    return Tela('Terceira Tela', corpo, botoes);
  }
}

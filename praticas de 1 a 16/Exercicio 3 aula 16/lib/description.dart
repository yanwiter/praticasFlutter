import 'package:flutter/material.dart';

class Descricao{
  final String tituloAppBar;
  final String tituloMensagem;
  final String mensagem;

  Descricao({
    required this.tituloAppBar, required this.tituloMensagem, required this.mensagem
  });

}



class SegundaRota extends StatelessWidget {
  final Descricao descricao;

  SegundaRota(this.descricao);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(descricao.tituloAppBar),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                descricao.tituloMensagem,
                style: TextStyle(
                  fontSize: 30,

                ),
              ),
              margin: EdgeInsets.all(80),
            ),
            Container(
              child: Text(
                  descricao.mensagem
              ),
              margin: EdgeInsets.all(80),
            ),
          ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,

    );
  }
}

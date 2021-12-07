import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../MeuAplicativo.dart';
import 'SegundaRota.dart';

class TerceiraRotaWidget extends StatefulWidget {
  const TerceiraRotaWidget({Key? key}) : super(key: key);

  @override
  State<TerceiraRotaWidget> createState() => _TerceiraRota();
}

class _TerceiraRota extends State<TerceiraRotaWidget>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: Text('Terceira Rota'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: Text(
                              "Terceira Rota Rota",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 24,
                              ),
                            )),
                        Center(
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: ElevatedButton(
                                child: Center(
                                    child: const Text(
                                      "Voltar Para Primeira Rota",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        height: 5,
                                      ),
                                      textAlign: TextAlign.center,
                                    )),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return Pratica18();
                                      }));
                                },
                              ),
                            )),
                      ],
                    )),
              ],
            )));
  }
}
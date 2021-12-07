import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../MeuAplicativo.dart';
import 'TerceiraRota.dart';

class SegundaRotaWidget extends StatefulWidget {
  const SegundaRotaWidget({Key? key}) : super(key: key);

  @override
  State<SegundaRotaWidget> createState() => _SegundaRota();
}

class _SegundaRota extends State<SegundaRotaWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: Text('Segunda Rota'),
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
                      "Segunda Rota",
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

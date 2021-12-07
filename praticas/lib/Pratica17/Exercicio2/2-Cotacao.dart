import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '3-Resultado.dart';

class CotacaoWidget extends StatefulWidget {
  CotacaoWidget({Key? key, required this.valorReal}) : super(key: key);

  String valorReal;

  @override
  State<CotacaoWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<CotacaoWidget> {

  final TextEditingController cotacaoController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: cotacaoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => cotacaoController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe a cotacao do dolar',
                ),
              ),
              TextButton(
                child: const Text(
                  "Coverter",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TelaResultadoWidget(
                        valorReal: widget.valorReal,
                        cotacao: cotacaoController.text
                    );
                  }));
                },
              ),
            ],
          ),
        ),
      ],
    )));
  }
}

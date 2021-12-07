import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '2-Cotacao.dart';

class Pratica17Exer2ValorReal extends StatefulWidget {
  const Pratica17Exer2ValorReal({Key? key}) : super(key: key);

  @override
  State<Pratica17Exer2ValorReal> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Pratica17Exer2ValorReal> {
  final TextEditingController valorRealController =
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
                controller: valorRealController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => valorRealController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Informe o valor em Real',
                ),
              ),
              TextButton(
                child: const Text(
                  "Proximo",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CotacaoWidget(
                        valorReal: valorRealController.text);
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

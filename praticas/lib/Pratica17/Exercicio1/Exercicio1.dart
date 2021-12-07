import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Exercicio1-tela2.dart';

class Pratica17Exer1 extends StatefulWidget {
  const Pratica17Exer1({Key? key}) : super(key: key);

  @override
  State<Pratica17Exer1> createState() => _Pratica17State();
}

class _Pratica17State extends State<Pratica17Exer1> {
  final TextEditingController temperaturaCelsiusController =
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
                controller: temperaturaCelsiusController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => temperaturaCelsiusController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'temperatura em graus Celsius',
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
                    return TelaConversaoWidget(
                        celsius: temperaturaCelsiusController.text);
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

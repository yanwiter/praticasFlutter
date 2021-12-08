import 'package:flutter/material.dart';

class Secundaria extends StatelessWidget {
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();


  soma() {
    double num1 = double.parse(this.numero1Controller.text);
    double num2 = double.parse(this.numero2Controller.text);
    double soma = num1 + num2;
    return '$num1 + $num2 = $soma';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda rota'
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: numero1Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => numero1Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Digite o primeiro número',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: numero2Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => numero2Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Digite o segundo número',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, soma());
            },
            child: Text(
              'Voltar para a primeira rota',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

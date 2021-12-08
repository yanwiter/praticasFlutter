import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";


  imc() {
    String mensagem;
    double peso = double.parse(this.pesoController.text);
    double altura = double.parse(this.alturaController.text);
    double imc = peso / (altura * altura);
    mensagem = imc.toStringAsFixed(2) + ': ';

    if (imc < 16) {
      return mensagem + "Magreza Grave";
    } else if ( imc < 17) {
      return mensagem + "Magreza moderada";
    } else if (imc < 18.5) {
      return mensagem + "Magreza leve";
    } else if (imc < 25) {
      return mensagem + "Saudavel";
    } else if (imc < 30) {
      return mensagem + "Sobrepeso";
    } else if (imc < 35) {
      return mensagem + "Obesidade Grau 1";
    } else if (imc < 40) {
      return mensagem + "Obesidade Grau 2 (Severa)";
    } else {
      return mensagem + "Obesidade Grau 3 (Morbida)";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: pesoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => pesoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Digite seu peso',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Digite sua altura',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String msg = imc();
              print(msg);
              setState(()=>this.resp = msg);
            },
            child: Text(
              'IMC',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              this.resp,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

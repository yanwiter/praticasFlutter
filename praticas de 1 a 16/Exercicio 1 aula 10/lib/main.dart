import 'package:flutter/material.dart';
void main() => runApp(
    MaterialApp(home: Home(), debugShowCheckedModeBanner: false,
    ));
  class Home extends StatefulWidget
  { HomeState createState()
    { return HomeState();
    }
  }
class HomeState extends State<Home> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";

  somar() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    int soma = num01 + num02; this.resp = '$num01 + $num02 = $soma';
    return this.resp;
  }

  subtrair() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    int subtrair = num01 - num02; this.resp = '$num01 - $num02 = $subtrair';
    return this.resp;
  }

  multiplicar() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    int multiplicar = num01 * num02; this.resp = '$num01 * $num02 = $multiplicar';
    return this.resp;
  }

  dividir() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double result = num01 / num02;
    this.resp = '$num01 / $num02 = ' + result.toStringAsFixed(2);
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Página Inicial'
          ),
      ),
      body: Column(
          children: [
            Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o primeiro número',
              ),
            ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: num02Controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => num02Controller.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe o segundo número',
                ),
              ),
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print(somar());
                      setState(somar);
                      },
                    child: Text(
                      'Somar',
                      style: TextStyle(
                      fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(subtrair());
                      setState(subtrair);
                    },
                    child: Text(
                      'Subtrair',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(multiplicar());
                      setState(multiplicar);
                    },
                    child: Text(
                      'Multiplicar',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(dividir());
                      setState(dividir);
                    },
                    child: Text(
                      'Dividir',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              this.resp,
              style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
              ),
            )
         ],
      ),
    );
  }
}
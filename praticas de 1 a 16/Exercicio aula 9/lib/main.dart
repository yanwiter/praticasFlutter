import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(home:
    Home(), debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  HomeState createState(){
    return HomeState();
  }
}

class HomeState extends State<Home>{
  int numeroVezes = 0;
  String mensagem = "Número de vezes em que o botão foi pressionado:"
  "0 \n" "Esse número é par";

  void cliqueDoBotao(){
    numeroVezes = numeroVezes + 1;
    mensagem = "Número de vezes em que o botão foi pressionado: $numeroVezes.\n"
        "Esse número é ${numeroVezes % 2 == 0 ? "par" : "ímpar"}";
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$mensagem" + " $numeroVezes"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(cliqueDoBotao);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
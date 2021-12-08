import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home(),debugShowCheckedModeBanner: false,));

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController alturaController = TextEditingController();
  TextEditingController comprimentoController = TextEditingController();
  TextEditingController profundidadeController = TextEditingController();
  String resp= "";

  volume(){
    int altura = int.parse(this.alturaController.text);
    int comprimento = int.parse(this.comprimentoController.text);
    int profundidade = int.parse(this.profundidadeController.text);
    int volume = altura * comprimento * profundidade;
    this.resp = 'O volume do paralelepípedo é $volume';
    //this.resp = '$altura * $comprimento * $profundidade';
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Volume do paralelepípedo"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Altura"),
            TextField(
              controller: alturaController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.height),
                suffixIcon: IconButton(
                   onPressed: () => alturaController.clear(),
                   icon: Icon(Icons.clear),
                  ),
                border: OutlineInputBorder(),
                labelText: "Qual é a altura do objeto?",
              ),
            ),
            Text("Comprimento"),
            TextField(
              controller: comprimentoController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.line_weight),
                suffixIcon: IconButton(
                  onPressed: () => comprimentoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: "Qual é o comprimento do objeto?",
              ),
            ),
            Text("Profundidade"),
            TextField(
              controller: profundidadeController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.arrow_drop_down_outlined),
                suffixIcon: IconButton(
                  onPressed: () => profundidadeController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: "Qual é a profundidade do objeto?",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(volume());
                setState(volume);
                },
              child: Text(
                'Volume',
                style: TextStyle(
                fontSize: 20,
                ),
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
      ),
    );
  }
}


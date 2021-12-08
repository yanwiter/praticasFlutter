import 'package:aula15ex01/director/secundaria.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String mensagem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Rota"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(mensagem,
              style:TextStyle(
                color: Colors.green,
                fontSize: 40,
                fontWeight: FontWeight.bold,

              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Secundaria(),
                  ),
                ).then(
                  (respostas) {
                    setState(
                      () {
                        mensagem = respostas;
                      },
                    );
                  },
                );
              },
              child: Text(
                'Ir para a segunda rota',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

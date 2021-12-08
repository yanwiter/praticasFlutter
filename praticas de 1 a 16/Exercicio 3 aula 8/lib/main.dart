import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          home: Home(),
          debugShowCheckedModeBanner: false,
        ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text(
          "Pagina inicial"
        ),
      ),
      body: Center(
        child: Container(
          child: Image(
            image: NetworkImage("https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif"),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
          padding: EdgeInsets.all(90),
          margin: const EdgeInsets.all(50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "exemplo de botão",
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

import 'package:flutter/material.dart';

import 'description.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SegundaRota(Descricao(
                       tituloAppBar: 'Nova York',
                        tituloMensagem: 'Nova York, EUA',
                       mensagem: 'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo (Wikipedia).')
                )
            ),
          ),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SegundaRota(Descricao(
                      tituloAppBar: 'Utah',
                      tituloMensagem: 'Utah, EUA',
                      mensagem: 'Utah é um estado no oeste dos EUA definido pelas vastas áreas de deserto e pela cordilheira Wasatch. O ponto principal de Salt Lake City, a capital, é a Praça do Templo, onde ficam a sede da Igreja de Jesus Cristo dos Santos dos Últimos Dias e seu majestoso templo e tabernáculo, com uma enorme abóbada e um famoso coral.(wikipedia)')
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
        ],
      ),
    );
  }
}

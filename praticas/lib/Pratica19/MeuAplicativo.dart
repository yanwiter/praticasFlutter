import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SegundaRota.dart';
import 'Transporte.dart';

class Pratica19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:
                          (context) {
                        return MeuAplicativo();
                      }));
            },
            icon: Icon(Icons.directions_car_sharp),
          ),
          IconButton(
            onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                    builder:
                        (context) {
                      return MeuAplicativo();
                    }));},
            icon: Icon(Icons.directions_bike),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz_outlined),
            onPressed: () {
              showDialog(
                  context: context,
                  builder:
                      (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                          'Alerta'),
                      content: const Text(
                          'Pedidos realizados com sucesso, agora é só esperar o boleto ficar disponível'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () =>
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder:
                                          (context) {
                                        return MeuAplicativo();
                                      })),
                          child:
                          const Text('OK'),
                        ),
                      ],
                    );
                  });
            },
            tooltip: 'Coleção de Vídeos',
          ),
        ],
      ),
    );
  }
}

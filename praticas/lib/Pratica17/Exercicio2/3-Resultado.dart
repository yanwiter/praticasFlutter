import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaResultadoWidget extends StatefulWidget {
  TelaResultadoWidget({Key? key, required this.valorReal, required this.cotacao, }) : super(key: key);

  String valorReal;
  String cotacao;

  @override
  State<TelaResultadoWidget> createState() => _TelaConversaoWidgetState();
}

class _TelaConversaoWidgetState extends State<TelaResultadoWidget> {

  final TextEditingController temperaturaCelsiusController = TextEditingController();

  converter(double celsius) => celsius * 1.8 + 32;

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
              Text(
                'R\$: ${widget.valorReal} = U\$ ${double.parse(widget.valorReal) / double.parse(widget.cotacao)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    )));
  }
}

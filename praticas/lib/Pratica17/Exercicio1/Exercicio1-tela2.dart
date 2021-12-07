import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaConversaoWidget extends StatefulWidget {
   TelaConversaoWidget({Key? key, required this.celsius}) : super(key: key);

   String celsius;

  @override
  State<TelaConversaoWidget> createState() => _TelaConversaoWidgetState();
}

class _TelaConversaoWidgetState extends State<TelaConversaoWidget> {

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
                'Graus Celsius: ${widget.celsius}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                'Graus Celsius: ${converter(double.parse(widget.celsius))}',
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

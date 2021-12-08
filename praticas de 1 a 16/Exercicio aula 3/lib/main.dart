import 'package:flutter/material.dart';

void main() {
  String nome = "Jonathan";
  String semana = "Terça-feira";

  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.double
              ),
            ),
        TextSpan(
          text: '\n Hoje é $semana',
          style: TextStyle(
              color: Colors.yellow,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.double
          ),
        ),
            TextSpan(
              text: '\n Boa noite !',
            ),
          ],
        ),
      ),
    ),
  );
}
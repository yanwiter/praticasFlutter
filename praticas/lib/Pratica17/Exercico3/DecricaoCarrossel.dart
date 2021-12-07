import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecricaoCarrosselWidget extends StatefulWidget {
  const DecricaoCarrosselWidget({Key? key}) : super(key: key);

  @override
  _DecricaoCarrosselWidgetState createState() => _DecricaoCarrosselWidgetState();
}

class _DecricaoCarrosselWidgetState extends State<DecricaoCarrosselWidget>  {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3, right: 3),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.3,
              blurRadius: 3,
            )
          ],
        ),
      ),
    );
  }
}

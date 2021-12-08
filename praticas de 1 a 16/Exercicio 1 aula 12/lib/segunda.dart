import 'package:flutter/material.dart';

class Segunda extends StatelessWidget {
  const Segunda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda tela"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '2', style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/terceira');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

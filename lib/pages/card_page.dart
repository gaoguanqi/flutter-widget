import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Card(
              color: Colors.pinkAccent,
              elevation: 6.0, //阴影大小
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              child: Container(
                width: 200.0,
                height: 150.0,
                child: Image.network('https://avatars0.githubusercontent.com/u/12546980?s=460&v=4',fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

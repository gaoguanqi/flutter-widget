import 'package:flutter/material.dart';

/**
 * 旋转盒子
 */
class RotatedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
            ),

            SizedBox(
              height: 20.0,
            ),
            RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.android
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RotatedBox(
              quarterTurns: 2,
              child: Icon(
                  Icons.android
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Icon(
                  Icons.android
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RotatedBox(
              quarterTurns: 4,
              child: Icon(
                  Icons.android
              ),
            ),
          ],
        ),
      ),
    );
  }
}

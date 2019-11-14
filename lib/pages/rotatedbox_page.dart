import 'package:flutter/material.dart';

/**
 * 旋转盒子
 */
class RotatedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotatedBox'),
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

            SizedBox(
              height: 20.0,
            ),

            Stack(
              children: <Widget>[
                Image.network('https://ss3.baidu.com/-rVXeDTa2gU2pMbgoY3K///it///u=4121232426,1436481329&fm=202&src=ry_add_wise'),
                RotatedBox(
                  quarterTurns: 1,
                  child: Icon(Icons.audiotrack),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

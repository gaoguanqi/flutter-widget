import 'package:flutter/material.dart';

class TikTokLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          FlatButton(
              onPressed: () {},
              child: Text('帮助',
                  style: TextStyle(color: Colors.black, fontSize: 14.0)))
        ],
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Text(
                    '13717591366',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Text(
                    '认证服务有中国移动提供',
                    style: TextStyle(fontSize: 14.0, color: Colors.black54),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Text(
                    '13717591366',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                ],
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0,top: 10.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  '其他登录方式',
                  style: TextStyle(fontSize: 14.0, color: Colors.blue),
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

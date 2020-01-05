import 'package:flutter/material.dart';

class TikTokLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
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
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                  ),
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
                  Container(
                    width: double.infinity,
                    height: 40.0,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: RaisedButton(
                      child: Text(
                        '本机号码一键登录',
                        style: TextStyle(fontSize: 12.0, color: Colors.white),
                      ),
                      color: Colors.redAccent, //按钮背景色
                      splashColor: Colors.white70, //墨汁飞溅色
                      onPressed: () {},
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Container(
                    width: double.infinity,
                    height: 40.0,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: OutlineButton(
                      child: Text(
                        '其他手机号码登录',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      ),
                      color: Colors.white,
                      //按钮背景色
                      splashColor: Colors.grey[100],
                      //墨汁飞溅色
                      disabledBorderColor: Colors.grey[100],
                      highlightedBorderColor: Colors.grey[100],
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12.0),
                    child: RichText(
                      text: TextSpan(
                        text: '登录即表示同意',
                        style: TextStyle(color: Colors.grey,
                            fontSize: 10.0),
                        children: <InlineSpan>[
                          TextSpan(
                            text: '用户协议',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10.0
                            ),
                          ),
                          TextSpan(
                            text: '和',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.0
                            ),
                          ),
                          TextSpan(
                            text: '隐私政策',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 10.0
                            ),
                          ),
                          TextSpan(
                            text: '以及',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.0
                            ),
                          ),
                          TextSpan(
                            text: '《中国移动认证服务条款》',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 10.0
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0, top: 10.0),
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

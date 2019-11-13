import 'package:flutter/material.dart';

/**
 *缩放布局，用来给元素做缩放和位置调整
 const FittedBox({
    Key key,
    //BoxFit.none 没有任何填充效果；
    //BoxFit.fill 充满父容器，不超过父容器
    //BoxFit.fitWidth 宽度充满父容器
    //BoxFit.fitHeight 高度充满父容器
    //BoxFit.contain 内容按宽高比等比填充，不超过父容器
    //BoxFit.cover 内容按原始尺寸充满父容器，可能超过父容器
    //BoxFit.scaleDown缩小范围，内容不会超过容器范围
    this.fit = BoxFit.contain,//缩放方式，
    this.alignment = Alignment.center,//对齐方式
    Widget child,
    })
 **/
class FittedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              margin: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: FittedBox(
                fit: BoxFit.none,
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                  child: Text("BoxFit.none"),
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              margin: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                  child: Text("BoxFit.fill"),
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              margin: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                  child: Text("BoxFit.fitWidth"),
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              margin: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                  child: Text("BoxFit.fitHeight"),
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              margin: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                  child: Text("BoxFit.contain"),
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              margin: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                  child: Text("BoxFit.cover"),
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              margin: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                  child: Text("BoxFit.scaleDown"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

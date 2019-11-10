import 'package:flutter/material.dart';

/**
 * 约束盒子 限定控件大小 用于对齐子widget添加额外的约束。
 */
class ConstrainedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0,bottom: 20.0,left: 10.0,right: 10.0),
              child: Text('约束盒子 限定控件大小 用于对齐子widget添加额外的约束'),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              child: Text(
                  '例'
              ),
              color: Colors.blue,
            ),


            ConstrainedBox( //创建约束盒子
              constraints: BoxConstraints( //约束规则
                maxWidth: 200.0,
                maxHeight: 200.0,
              ),
              child: Container(
                width: 300.0,
                height: 300.0,
                color: Colors.greenAccent,
                child: Text(
                    '内容'
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

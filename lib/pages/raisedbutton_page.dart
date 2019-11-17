import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

class RaisedButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RaisedButton'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            RaisedButton(
              child: Text('凸起按钮'),
              color: Colors.deepOrangeAccent, //按钮背景色
              colorBrightness: Brightness.dark,//按钮w为亮色
              disabledColor: Colors.greenAccent,//失效时的背景色
              disabledTextColor: Colors.orange,//失效时的文本颜色
              textColor: Colors.deepPurpleAccent,//文本颜色
              textTheme: ButtonTextTheme.accent,//按钮主题
              splashColor: Colors.cyan,//墨汁飞溅色
              clipBehavior: Clip.antiAlias,//抗锯齿
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 5.0,right: 5.0),
              shape: Border.all(
                color: Colors.lime,
                width: 2.0,
                style: BorderStyle.solid,
              ),
              onPressed: (){
                ToastUtils.showToast("点击");
              },
            ),

            SizedBox(height: 20.0,),
            RaisedButton(
              child: Text('凸起按钮'),
              color: Colors.deepOrangeAccent, //按钮背景色
              colorBrightness: Brightness.dark,//按钮w为亮色
              disabledColor: Colors.greenAccent,//失效时的背景色
              disabledTextColor: Colors.orange,//失效时的文本颜色
              textColor: Colors.deepPurpleAccent,//文本颜色
              textTheme: ButtonTextTheme.accent,//按钮主题
              splashColor: Colors.cyan,//墨汁飞溅色
              clipBehavior: Clip.antiAlias,//抗锯齿
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 5.0,right: 5.0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.0,
                  color: Colors.pinkAccent,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
              onPressed: (){
                ToastUtils.showToast("点击");
              },
            ),
          ],
        ),
      ),
    );
  }
}

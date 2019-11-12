import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

/**
 * 装饰器组件
 */
class DecoratedBoxPage extends StatelessWidget {
  /**
      BoxDecoration({
      Color color, //颜色
      DecorationImage image,//图片
      BoxBorder border, //边框
      BorderRadiusGeometry borderRadius, //圆角
      List<BoxShadow> boxShadow, //阴影,可以指定多个
      Gradient gradient, //渐变
      BlendMode backgroundBlendMode, //背景混合模式
      BoxShape shape = BoxShape.rectangle, //形状
      })
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBox'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            GestureDetector(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.red, Colors.orange[700]]),
                  //背景渐变
                  borderRadius: BorderRadius.circular(3.0),
                  //3像素圆角
                  boxShadow: [
                    //阴影
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0)
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                  child: Text('按钮',style: TextStyle(color: Colors.white),),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            MyText('点击按钮'),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),

            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    color: Colors.deepPurpleAccent,
                    child: Text('button1'),
                    onPressed: (){
                      ToastUtils.showTopToast('button1');
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    color: Colors.deepOrangeAccent,
                    child: Text('button2'),
                    onPressed: (){
                      ToastUtils.showTopToast('button2');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyText extends StatefulWidget {
  String _txt;
  MyText(String txt){
    this._txt = txt;
  }

  @override
  _MyTextState createState() => _MyTextState(_txt);
}

class _MyTextState extends State<MyText> {
  List<Color> _colors = [
    Colors.red, Colors.orange[700],
  ];



  String _txt;

  _MyTextState(String txt){
    this._txt = txt;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: _colors),
          //背景渐变
          borderRadius: BorderRadius.circular(3.0),
          //3像素圆角
          boxShadow: [
            //阴影
            BoxShadow(
                color: Colors.white,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0)
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
          child: Text(_txt,style: TextStyle(color: Colors.white),),
        ),
      ),

      onTapDown: (TapDownDetails details){

        setState(() {
          _colors = [
            Colors.blue, Colors.blue[700],
          ];
        });
      },

      onTapUp: (TapUpDetails details){
        setState(() {
          _colors = [
            Colors.red, Colors.orange[700],
          ];
        });
      },

      onTapCancel: (){
        setState(() {
          _colors = [
            Colors.red, Colors.orange[700],
          ];
        });
      },
    );
  }
}


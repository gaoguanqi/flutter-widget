import 'package:flutter/material.dart';

/**
 * Align 对齐组件
 */
class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Align对齐组件'
        ),
      ),
      body:Container(
        color: Colors.blueAccent,
        child: Align(
          alignment: Alignment.center, //对齐方式 居中
//          widthFactor: 2, //子控件宽度的系数   (Align  的宽高是 子控件的 2 被,alignment失效)
//          heightFactor: 2,//子控件高度的系数
          child: Container(
            color: Colors.redAccent,
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
    );
  }
}

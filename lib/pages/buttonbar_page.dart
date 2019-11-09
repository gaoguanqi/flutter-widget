import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

/**
 * 一排的按钮 一般用于页面中等宽的按钮组
 */
class ButtonBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonBar'),
      ),
      body: Center(
        child: ButtonBar(
          //对齐方式
          alignment: MainAxisAlignment.spaceBetween,
          //子组件大小
          mainAxisSize: MainAxisSize.max, //mix
          children: <Widget>[
            RaisedButton(
              child: Text('按钮1'),
              onPressed: (){
                ToastUtils.showTopToast('按钮1');
              },
            ),
            RaisedButton(
              child: Text('按钮2'),
              onPressed: (){
                ToastUtils.showTopToast('按钮2');
              },
            ),
            RaisedButton(
              child: Text('按钮3'),
              onPressed: (){
                ToastUtils.showTopToast('按钮3');
              },
            ),
          ],
        ),
      )
    );
  }
}

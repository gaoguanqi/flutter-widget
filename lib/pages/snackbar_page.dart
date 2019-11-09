import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';
class SnackBarPage extends StatelessWidget {
// 需要设置Scaffold的key才能弹出SnackBar
  var _scaffoldkey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,  // 设置key处理SnackBar，这里一定要设置，否则弹窗不显示
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: FlatButton(
          child: Text('点击'),
          onPressed: (){
            final snackBar = SnackBar(
              content: Text('msg'),
              backgroundColor: Colors.deepOrangeAccent,
              duration: Duration(seconds: 3), // seconds  秒， microseconds 微妙
              action: SnackBarAction(
                label: '取消',
                textColor: Colors.white,
                onPressed: (){
                  ToastUtils.showTopToast('点击取消');
                },
              ),
            );
            _scaffoldkey.currentState.showSnackBar(snackBar);
          },
        ),
      ),
    );
  }
}

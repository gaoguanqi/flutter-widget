import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

class RawMaterialButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RawMaterialButton'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue.shade100,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            RawMaterialButton(
              child: Text('原始按钮'),
              onPressed: (){
                ToastUtils.showTopToast("RawMaterialButton");
              },
            ),
          ],
        ),
      ),
    );
  }
}

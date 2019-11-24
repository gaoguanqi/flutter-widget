import 'package:flutter/material.dart';

class CheckboxListTitlePage extends StatefulWidget {
  @override
  _CheckboxListTitlePageState createState() => _CheckboxListTitlePageState();
}

class _CheckboxListTitlePageState extends State<CheckboxListTitlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxListTitle'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            CheckboxListTile(
              //文字是否对其，图标高度
              dense: true,
              //文字是否是三行
              isThreeLine: true,
              title: Text('文本内容1'),
              // 将控件放在何处相对于文本,leading 按钮显示在文字前面,platform,trailing 按钮显示在文字后面
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text('副标题1'),
              secondary: Icon(Icons.ac_unit),
              activeColor: Colors.deepOrangeAccent,
              value: true,
              checkColor: Colors.cyan,
              onChanged: (bool value) {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

/**
 * 线框按钮
 */

class OutLineButtonPage extends StatefulWidget {
  @override
  _OutLineButtonPageState createState() => _OutLineButtonPageState();
}

class _OutLineButtonPageState extends State<OutLineButtonPage> {
  Color _color = Colors.grey.shade300;
  bool _hasNone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OutLineButton'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            OutlineButton(
              child: Text(
                '线框按钮',
                style: TextStyle(color: Colors.deepOrangeAccent),
              ),
              color: Colors.blue,
              onPressed: () {
                ToastUtils.showToast("OutLineButton");
              },
              borderSide: BorderSide(
                color: Colors.deepOrangeAccent,
              ),
            ),
            OutlineButton.icon(
                onPressed: () {
                  setState(() {
                    if (_hasNone) {
                      _color = Colors.grey.shade300;
                      _hasNone = false;
                    } else {
                      _color = Colors.deepOrangeAccent;
                      _hasNone = true;
                    }
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: _color,
                ),
                label: Text('点赞'))
          ],
        ),
      ),
    );
  }
}

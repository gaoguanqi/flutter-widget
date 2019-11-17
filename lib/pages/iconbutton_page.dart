import 'package:flutter/material.dart';

/**
 * 图标按钮
 */

class IconButtonPage extends StatefulWidget {
  @override
  _IconButtonPageState createState() => _IconButtonPageState();
}

class _IconButtonPageState extends State<IconButtonPage> {
  Color _color = Colors.grey.shade300;
  bool _hasNone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: _color,
              ),
              splashColor: Colors.blue,
              tooltip: '提示文本',
              onPressed: () {
                setState(() {
                  if (_hasNone) {
                    _hasNone = false;
                    _color = Colors.grey.shade300;
                  } else {
                    _hasNone = true;
                    _color = Colors.deepOrangeAccent;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

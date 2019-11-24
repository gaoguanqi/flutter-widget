import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Checkbox(
              tristate: false, //如果 tristate  为true 那么value的值有可能是空
              activeColor: Colors.deepOrangeAccent, //激活时的颜色
              checkColor: Colors.blue,//box 中对号的颜色
              value: _currentIndex == 0,
              onChanged: (bool value) {
                setState(() {
                  if(value) _currentIndex = 0;
                });
              },
            ),

            Checkbox(
              tristate: false,
              activeColor: Colors.deepOrangeAccent, //激活时的颜色
              checkColor: Colors.blue,
              value: _currentIndex == 1,
              onChanged: (bool value) {
                setState(() {
                 if(value) _currentIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

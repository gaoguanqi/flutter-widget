import 'package:flutter/material.dart';

/**
 * 指定宽高盒子
 */
class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox'),
      ),
      body: Center(
        child: SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            width: 400.0,
            height: 600.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

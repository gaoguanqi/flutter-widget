import 'package:flutter/material.dart';

/**
 * 溢出盒子
 */
class OverflowBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          width: 200.0,
          height: 200.0,
          padding: const EdgeInsets.all(5.0),
          child: OverflowBox(
            alignment: Alignment.topLeft,
            maxWidth: 300.0,
            maxHeight: 500.0,
            child: Container(
              color: Colors.blueGrey,
              width: 400.0,
              height: 400.0,
            ),
          ),
        ),
      ),
    );
  }
}

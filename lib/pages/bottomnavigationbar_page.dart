import 'package:flutter/material.dart';

/**
 * 底部导航栏
 */
class BottomNavigationBarPage extends StatefulWidget {
  @override
  _BottomNavigationBarPageState createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentIndex = 0;

  List<Color> _colorList = [
    Colors.lightGreen,
    Colors.red,
    Colors.orange,
    Colors.deepPurpleAccent
  ];


  List<Widget> _pageList = [
    Page1(Colors.lightGreen),
    Page2(Colors.red),
    Page3(Colors.orange),
    Page4(Colors.deepPurpleAccent)
  ];

  List<BottomNavigationBarItem> _barList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      title: Text('bar1'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      title: Text('bar2'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      title: Text('bar3'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      title: Text('bar4'),
    )
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        items: _barList,
        selectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        fixedColor: _colorList[_currentIndex],
        unselectedItemColor: Colors.grey.shade400,
        onTap: (int value){
          setState(() {
            this._currentIndex = value;
          });
        },
      ),
    );
  }
}


class Page1 extends StatelessWidget {

  Color _color;
  Page1(Color color):super(){
    this._color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Center(
        child: Text('page1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  Color _color;
  Page2(Color color):super(){
    this._color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Center(
        child: Text('page2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  Color _color;
  Page3(Color color):super(){
    this._color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Center(
        child: Text('page3'),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  Color _color;
  Page4(Color color):super(){
    this._color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Center(
        child: Text('page4'),
      ),
    );
  }
}







import 'dart:ffi';

import 'package:flutter/material.dart';

class AnimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anim Page'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Text('content'),
              flex: 1,
            ),
            Column(
              children: <Widget>[
                OutlineButton(
                  child: Text('从左到右'),
                  onPressed: () {
                    Navigator.of(context).push(Start2EndRoutePage(Page1()));
                  },
                ),
                OutlineButton(
                  child: Text('从右到左'),
                  onPressed: () {
                    Navigator.of(context).push(End2StartRoutePage(Page2()));
                  },
                ),
                OutlineButton(
                  child: Text('从低到顶'),
                  onPressed: () {
                    Navigator.of(context).push(Bottom2TopRoutePage(Page3()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page1'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('page1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page2'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('page2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page3'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('page3'),
      ),
    );
  }
}

class Start2EndRoutePage extends PageRouteBuilder {
  final Widget widget;

  Start2EndRoutePage(this.widget)
      : super(
    // 设置过度时间
      transitionDuration: Duration(milliseconds: 500),
      // 构造器
      pageBuilder: (// 上下文和动画
          BuildContext context,
          Animation<double> animaton1,
          Animation<double> animaton2,) {
        return widget;
      },
      transitionsBuilder: (BuildContext context,
          Animation<double> animaton1,
          Animation<double> animaton2,
          Widget child,) {
        return SlideTransition(
          position: Tween<Offset>(
            // 设置滑动的 X , Y 轴
          //从左到右
              begin: Offset(-1.0, 0.0),
              end: Offset(0.0, 0.0)
          ).animate(CurvedAnimation(
              parent: animaton1,
              curve: Curves.fastOutSlowIn
          )),
          child: child,
        );
      });
}


class End2StartRoutePage extends PageRouteBuilder {
  final Widget widget;

  End2StartRoutePage(this.widget)
      : super(
    // 设置过度时间
      transitionDuration: Duration(milliseconds: 500),
      // 构造器
      pageBuilder: (// 上下文和动画
          BuildContext context,
          Animation<double> animaton1,
          Animation<double> animaton2,) {
        return widget;
      },
      transitionsBuilder: (BuildContext context,
          Animation<double> animaton1,
          Animation<double> animaton2,
          Widget child,) {
        return SlideTransition(
          position: Tween<Offset>(
            // 设置滑动的 X , Y 轴
            //从右到左
              begin: Offset(1.0, 0.0),
              end: Offset(0.0, 0.0)
          ).animate(CurvedAnimation(
              parent: animaton1,
              curve: Curves.fastOutSlowIn
          )),
          child: child,
        );
      });
}

class Bottom2TopRoutePage extends PageRouteBuilder {
  final Widget widget;

  Bottom2TopRoutePage(this.widget)
      : super(
    // 设置过度时间
      transitionDuration: Duration(milliseconds: 500),
      // 构造器
      pageBuilder: (// 上下文和动画
          BuildContext context,
          Animation<double> animaton1,
          Animation<double> animaton2,) {
        return widget;
      },
      transitionsBuilder: (BuildContext context,
          Animation<double> animaton1,
          Animation<double> animaton2,
          Widget child,) {
        return SlideTransition(
          position: Tween<Offset>(
            // 设置滑动的 X , Y 轴
            //从低到顶
              begin: Offset(0.0, 1.0),
              end: Offset(0.0, 0.0)
          ).animate(CurvedAnimation(
              parent: animaton1,
              curve: Curves.fastOutSlowIn
          )),
          child: child,
        );
      });
}
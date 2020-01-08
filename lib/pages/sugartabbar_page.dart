import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/tab_myindicator.dart';

class SugarTabBarPage extends StatefulWidget {
  @override
  _SugarTabBarPageState createState() => _SugarTabBarPageState();
}

class _SugarTabBarPageState extends State<SugarTabBarPage> with SingleTickerProviderStateMixin {

  List<Widget> _tabs;
  List<Widget> _tabBarViews;
  TabController _tabController;

  MyUnderlineTabIndicator _indicator;

  @override
  void initState() {
    super.initState();
    _tabs = List();
    _tabs.add(Tab(child: Text('推荐',),),);
    _tabs.add(Tab(child: Text('关注',),),);

    _tabBarViews = List();
    _tabBarViews.add(Container(
      alignment: Alignment.center,
      child: Text('推荐内容',style: TextStyle(fontSize: 30.0,color: Colors.blue)),
    ));
    _tabBarViews.add(Container(
      alignment: Alignment.center,
      child: Text('关注内容',style: TextStyle(fontSize: 30.0,color: Colors.blue),),
    ));
    _tabController = TabController(initialIndex: 0,length: _tabs.length,vsync: this);
    _indicator = MyUnderlineTabIndicator();
    _tabController.addListener((){
      if (_tabController.indexIsChanging) {//判断TabBar是否切换
        print('1111111');
      }else{
        print('22222');
      }
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0.2,
        title: Container(
          alignment: Alignment.center,
          child: TabBar(tabs: _tabs,
            controller: _tabController,
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.pink[100],
            indicatorColor: Colors.pink,
            labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 16.0),
            indicator: _indicator,
          ),
          width: 130.0,
        ),
      ),
      body: TabBarView(children: _tabBarViews,controller: _tabController,),
    );
  }
}


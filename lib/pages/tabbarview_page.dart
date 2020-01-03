import 'package:flutter/material.dart';

class TabBarViewPage extends StatefulWidget {

  @override
  _TabBarViewPageState createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage> with SingleTickerProviderStateMixin {


  List<Widget> _tabs;
  List<Widget> _tabBarViews;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabs = List();
    _tabs.add(Tab(child: Text('tab1'),),);
    _tabs.add(Tab(child: Text('tab2'),),);
    _tabBarViews = List();
    _tabBarViews.add(Container(
      alignment: Alignment.center,
      child: Text('page1111'),
    ));
    _tabBarViews.add(Container(
      alignment: Alignment.center,
      child: Text('page222'),
    ));
    _tabController = TabController(initialIndex: 0,length: _tabs.length,vsync: this);
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
            unselectedLabelColor: Colors.black54,
            labelStyle: TextStyle(fontSize: 18.0),
            unselectedLabelStyle: TextStyle(fontSize: 16.0),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.pink,
            indicatorWeight: 4.0,
            indicatorPadding: EdgeInsets.only(bottom: 1),//与底部距离为1
          ),
          width: 140.0,
        ),
      ),
      body: TabBarView(children: _tabBarViews,controller: _tabController,),
    );
  }
}

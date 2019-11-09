import 'package:flutter/material.dart';
class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin{

  ScrollController _scrollController;
  TabController _tabController;

   List<Widget> _tabBars = [
    Tab(text: 'tab1',icon: Icon(Icons.favorite,color: Colors.white,),),
    Tab(text: 'tab2',icon: Icon(Icons.favorite,color: Colors.white,),),
    Tab(text: 'tab3',icon: Icon(Icons.favorite,color: Colors.white,),),
    Tab(text: 'tab4',icon: Icon(Icons.favorite,color: Colors.white,),),
    Tab(text: 'tab5',icon: Icon(Icons.favorite,color: Colors.white,),),
    Tab(text: 'tab6',icon: Icon(Icons.favorite,color: Colors.white,),),
  ];

   List<Widget> _tabViews = [
     Center(child: Text('页面1'),),
     Center(child: Text('页面2'),),
     Center(child: Text('页面3'),),
     Center(child: Text('页面4'),),
     Center(child: Text('页面5'),),
     Center(child: Text('页面6'),),
   ];


   @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _tabController = TabController(vsync: this,length: _tabBars.length);
    _tabController.animation.addListener((){

    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        leading: Icon(Icons.home,color: Colors.white,),
        backgroundColor: Colors.deepOrangeAccent,
        bottom: TabBar(
          isScrollable: true, //是否可滚动
          tabs: _tabBars,
          controller: _tabController,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        children: _tabViews,
        controller: _tabController,
      ),
    );
  }
}

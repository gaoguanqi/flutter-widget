import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

class TikTokPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContentPage();
  }
}

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  TextStyle _selectTextStyle;
  TextStyle _unSelectTextStyle;

  int _currentPage = 0;

  List<Widget> _pageList = List();
  List<AppBar> _appBarList = List();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 2, vsync: this);
    _pageController = PageController(initialPage: _currentPage);
    _selectTextStyle = TextStyle(fontSize: 16.0, color: Colors.white);
    _unSelectTextStyle = TextStyle(fontSize: 16.0, color: Colors.grey[700]);
    _pageList.add(_HomePage());
    _pageList.add(_TheCityPage());
    _pageList.add(_AddPage());
    _pageList.add(_MessagePage());
    _pageList.add(_MinePage());

    _appBarList.add(_homeAppBar());
    _appBarList.add(_theCityAppBar());
    _appBarList.add(_addAppBar());
    _appBarList.add(_messageAppBar());
    _appBarList.add(_mineAppBar());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarList[_currentPage],
      body: PageView.builder(itemBuilder: (context, index) {
        this._currentPage = index;
        return _pageList[index];
      },controller: _pageController,physics: NeverScrollableScrollPhysics(),),// NeverScrollableScrollPhysics 禁止滑动可以这样使用
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        elevation: 0.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
           Expanded(
             child:  FlatButton(
               textColor: Colors.white,
               disabledColor: Colors.grey,
               disabledTextColor: Colors.black,
               onPressed: () {
                 setState(() {
                   _currentPage = 0;
                   _pageController.jumpToPage(_currentPage);
                 });
               },
               child: Text(
                 '首页',
                 style: (_currentPage == 0)
                     ? _selectTextStyle
                     : _unSelectTextStyle,
               ),
             ),
             flex: 1,
           ),

            Expanded(
              child: FlatButton(
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                onPressed: () {
                  setState(() {
                    _currentPage = 1;
                    _pageController.jumpToPage(_currentPage);
                  });
                },
                child: Text(
                  '同城',
                  style: (_currentPage == 1)
                      ? _selectTextStyle
                      : _unSelectTextStyle,
                ),
              ),
              flex: 1,
            ),

            GestureDetector(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: ScreenUtil().setWidth(160.0),
                  minHeight: ScreenUtil().setHeight(74.0),
                  maxWidth: ScreenUtil().setWidth(160.0),
                  maxHeight: ScreenUtil().setHeight(74.0),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      left: ScreenUtil().setWidth(10.0),
                      width: ScreenUtil().setWidth(120.0),
                      height: ScreenUtil().setHeight(74.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(6.0)),
                      ),
                    ),
                    Positioned(
                      right: ScreenUtil().setWidth(10.0),
                      width: ScreenUtil().setWidth(120.0),
                      height: ScreenUtil().setHeight(74.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6.0)),
                      ),
                    ),
                    Positioned(
                      width: ScreenUtil().setWidth(122.0),
                      height: ScreenUtil().setHeight(74.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0)),
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black87,
                    )
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                  _pageController.jumpToPage(_currentPage);
                });
              },
            ),
            Expanded(
              child: FlatButton(
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                onPressed: () {
                  setState(() {
                    _currentPage = 3;
                    _pageController.jumpToPage(_currentPage);
                  });
                },
                child: Text(
                  '消息',
                  style: (_currentPage == 3)
                      ? _selectTextStyle
                      : _unSelectTextStyle,
                ),
              ),
              flex: 1,
            ),

            Expanded(
              child: FlatButton(
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                onPressed: () {
                  setState(() {
                    _currentPage = 4;
                    _pageController.jumpToPage(_currentPage);
                  });
                },
                child: Text(
                  '我',
                  style: (_currentPage == 4)
                      ? _selectTextStyle
                      : _unSelectTextStyle,
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }







  _homeAppBar(){
    return AppBar(
      backgroundColor: Colors.black87,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.ondemand_video,
            color: Colors.white,
          ),
        ),
      ],
      title: Container(
        alignment: Alignment.center,
        width: 140.0,
        child: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text('关注'),
            ),
            Tab(
              child: Text('推荐'),
            )
          ],
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          indicatorColor: Colors.white,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
    );
  }


  _theCityAppBar(){
    return AppBar(
      backgroundColor: Colors.black87,
      centerTitle: true,
      title: Text('同城'),
    );
  }
  _addAppBar(){
    return AppBar(
      backgroundColor: Colors.black87,
      centerTitle: true,
      title: Text('add'),
    );
  }
  _messageAppBar(){
    return AppBar(
      backgroundColor: Colors.black87,
      centerTitle: true,
      title: Text('消息'),
    );
  }

  _mineAppBar(){
    return AppBar(
      backgroundColor: Colors.black87,
      centerTitle: true,
      title: Text('我'),
    );
  }


}

class _HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('首页'),
    );
  }
}




class _TheCityPage extends StatefulWidget {
  @override
  _TheCityPageState createState() => _TheCityPageState();
}

class _TheCityPageState extends State<_TheCityPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('同城'),
    );
  }
}



class _MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<_MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('消息'),
    );
  }
}


class _MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<_MinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('我'),
    );
  }
}


class _AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<_AddPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Add'),
    );
  }
}

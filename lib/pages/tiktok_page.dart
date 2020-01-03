import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';
import 'package:like_button/like_button.dart';
import 'package:marquee_flutter/marquee_flutter.dart';

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
      body: PageView.builder(
        itemBuilder: (context, index) {
          this._currentPage = index;
          return _pageList[index];
        },
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
      ),
      // NeverScrollableScrollPhysics 禁止滑动可以这样使用
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        elevation: 0.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: FlatButton(
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

  _homeAppBar() {
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

  _theCityAppBar() {
    return AppBar(
      backgroundColor: Colors.black87,
      centerTitle: true,
      title: Text('同城'),
    );
  }

  _addAppBar() {
    return AppBar(
      backgroundColor: Colors.black87,
      centerTitle: true,
      title: Text('add'),
    );
  }

  _messageAppBar() {
    return AppBar(
      backgroundColor: Colors.black87,
      centerTitle: true,
      title: Text('消息'),
    );
  }

  _mineAppBar() {
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
  int _likeCount= 1;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.black54,
        ),
        Positioned(
          bottom: ScreenUtil().setHeight(10.0),
          width: ScreenUtil().setWidth(ScreenUtil().width * 0.72),
          child: Container(
            padding: EdgeInsets.all(ScreenUtil().setHeight(10.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '@人民日报',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(10.0)),
                ),
                Text(
                  '做一个积分进度和类似物流进度的小组件，优先考虑的是自定义 ListView 但还是查阅了一下资料，发现神奇的 Stepper 步进器，虽不能完全满足需求，但提供了很好的思路',
                  style: TextStyle(fontSize: 14.0, color: Colors.white),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  height: ScreenUtil().setHeight(80.0),
//                  child: Text('开启下面的MarqueeWidget'),
                  child: MarqueeWidget(
                    text: 'ListView即滚动列表控件，能将子控件组成可滚动的列表。当你需要排列的子控件超出容器大小',
                    textStyle: new TextStyle(fontSize: 14.0,color: Colors.white),
                    scrollAxis: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: ScreenUtil().setWidth(40.0),
          top: ScreenUtil().setHeight(ScreenUtil().height * 0.32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  width: ScreenUtil().setWidth(160.0),
                  height: ScreenUtil().setHeight(200.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: ScreenUtil().setWidth(160.0),
                        height: ScreenUtil().setHeight(160.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://upload.jianshu.io/users/upload_avatars/6260073/04ce23e0-aa4e-4d70-a300-bf52bebc6a36.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240',
                          ),
                        ),
                      ),
                      Positioned(
                        top: ScreenUtil().setHeight(30.0),
                        child: Container(
                          width: ScreenUtil().setWidth(160.0),
                          height: ScreenUtil().setHeight(160.0),
                          alignment: Alignment.bottomCenter,
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  ToastUtils.showToast('点击头像');
                },
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: ScreenUtil().setHeight(30.0)),),
                  LikeButton(
                    likeBuilder: (bool isLiked) {
                      _likeCount = isLiked? _likeCount+1:_likeCount-1;
                      return isLiked? Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite,color: Colors.white,);
                    },
                  ),
                  Text(_likeCount.toString(),style: TextStyle(color: Colors.white,fontSize: 12.0)),
                ],
              ),
              GestureDetector(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: ScreenUtil().setHeight(50.0)),),
                    Icon(Icons.message,color: Colors.white,),
                    Text('1',style: TextStyle(color: Colors.white,fontSize: 12.0)),
                  ],
                ),
                onTap: (){
                  ToastUtils.showToast('消息');
                },
              ),
              GestureDetector(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: ScreenUtil().setHeight(50.0)),),
                    Icon(Icons.share,color: Colors.white,),
                    Text('1',style: TextStyle(color: Colors.white,fontSize: 12.0)),
                  ],
                ),
                onTap: (){
                  ToastUtils.showToast('分享');
                },
              ),
            ],
          ),
        ),
        Positioned(
          right: ScreenUtil().setWidth(10.0),
          bottom: ScreenUtil().setHeight(20.0),
//          child: Text('开启下面的RotateAlbum'),
          child:  RotateAlbum(),
        ),
      ],
    );
  }
}

class RotateAlbum extends StatefulWidget {
  @override
  _RotateAlbumState createState() => _RotateAlbumState();
}

class _RotateAlbumState extends State<RotateAlbum>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  RotationTransition _transition;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 8));
    _transition = RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller)
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            _controller.forward(from: 0.0);
          }
        }),
      child: Container(
        width: ScreenUtil().setWidth(160.0),
        height: ScreenUtil().setHeight(160.0),
        alignment: Alignment.center,
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://upload.jianshu.io/users/upload_avatars/6260073/04ce23e0-aa4e-4d70-a300-bf52bebc6a36.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240',
          ),
        ),
      ),
    );
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: _transition,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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

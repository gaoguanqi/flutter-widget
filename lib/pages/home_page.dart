import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_widget/app/config/data.dart';
import 'package:flutter_widget/app/global/router_manger.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';
import 'package:flutter_widget/pages/anim_page.dart';
import 'package:flutter_widget/pages/tiktoklogin_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _list = Data().HomeData();
  DateTime _popTime;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Widget',
            style: TextStyle(
                fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: _body(context),
      ),
      onWillPop: () async {
        if(_popTime == null || DateTime.now().difference(_popTime)> Duration(seconds: 1)){
          //两次点击时间间隔超过1秒则重新计时
          _popTime = DateTime.now();
          ToastUtils.showToast('再按一次退出');
          return false;
        }
        return true;
      },
    );
  }

  Widget _body(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
                position: index,
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        color: Colors.blueAccent.shade100,
                        height: 60.0,
                        child: Text(
                          _list[index],
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                      onTap: (){
                        onClikcItem(_list[index]);
                      }
                    ),
                  ),
                ),
                duration: const Duration(microseconds: 375));
          },
          itemCount: _list.length),
    );
  }

  void onClikcItem(String text) {
    switch(text){
      case 'Align':{
        Navigator.of(context).pushNamed(RouteName.align);
      }
        break;
      case 'AppBar':{
        Navigator.of(context).pushNamed(RouteName.appBar);
      }
      break;
      case 'BottomAppBar':{
        Navigator.of(context).pushNamed(RouteName.bottomAppBar);
      }
      break;
      case 'ButtonBar':{
        Navigator.of(context).pushNamed(RouteName.buttonBar);
      }
      break;
      case 'FlexibleSpaceBar':{
        Navigator.of(context).pushNamed(RouteName.flexibleSpaceBar);
      }
      break;
      case 'SliverAppBar':{
        Navigator.of(context).pushNamed(RouteName.sliverAppBarPage);
      }
      break;
      case 'SnackBar':{
        Navigator.of(context).pushNamed(RouteName.snackBar);
      }
      break;
      case 'TabBar':{
        Navigator.of(context).pushNamed(RouteName.tabBar);
      }
      break;
      case 'TabBarView':{
        Navigator.of(context).pushNamed(RouteName.tabBarView);
      }
      break;
      case 'BottomNavigationBar':{
        Navigator.of(context).pushNamed(RouteName.bottomNavigationBar);
      }
      break;
      case 'ConstrainedBox':{
        Navigator.of(context).pushNamed(RouteName.constrainedBox);
      }
      break;
      case 'DecoratedBox':{
        Navigator.of(context).pushNamed(RouteName.decoratedBox);
      }
      break;
      case 'Provider':{
        Navigator.of(context).pushNamed(RouteName.provider);
      }
      break;
      case 'FittedBox':{
        Navigator.of(context).pushNamed(RouteName.fittedBox);
      }
      break;
      case 'OverflowBox':{
        Navigator.of(context).pushNamed(RouteName.overflowBox);
      }
      break;
      case 'RotatedBox':{
        Navigator.of(context).pushNamed(RouteName.rotatedBox);
      }
      break;
      case 'SizedBox':{
        Navigator.of(context).pushNamed(RouteName.sizedBox);
      }
      break;
      case 'DropdownButton':{
        Navigator.of(context).pushNamed(RouteName.dropdownButton);
      }
      break;
      case 'FlatButton':{
        Navigator.of(context).pushNamed(RouteName.flatButton);
      }
      break;
      case 'FloatingActionButton':{
        Navigator.of(context).pushNamed(RouteName.floatingActionButton);
      }
      break;
      case 'IconButton':{
        Navigator.of(context).pushNamed(RouteName.iconButton);
      }
      break;
      case 'OutLineButton':{
        Navigator.of(context).pushNamed(RouteName.outLineButton);
      }
      break;
      case 'RaisedButton':{
        Navigator.of(context).pushNamed(RouteName.raisedButton);
      }
      break;
      case 'RawMaterialButton':{
        Navigator.of(context).pushNamed(RouteName.rawMaterialButton);
      }
      break;
      case 'Card':{
        Navigator.of(context).pushNamed(RouteName.card);
      }
      break;
      case 'Checkbox':{
        Navigator.of(context).pushNamed(RouteName.checkbox);
      }
      break;
      case 'CheckboxListTitle':{
        Navigator.of(context).pushNamed(RouteName.checkboxListTitle);
      }
      break;
      case 'Bloc':{
        Navigator.of(context).pushNamed(RouteName.bloc);
      }
      break;
      case 'TikTok':{
        Navigator.of(context).pushNamed(RouteName.tikTok);
      }
      break;
      case 'AnimPage':{
        Navigator.of(context).pushNamed(RouteName.animPage);
      }
      break;
      case 'TikTokLogin':{
//        Navigator.of(context).pushNamed(RouteName.tikTokLogin);
        Navigator.of(context).push(Bottom2TopRoutePage(TikTokLoginPage()));
      }
      break;
      case 'SugarTabBar':{
        Navigator.of(context).pushNamed(RouteName.sugarTabBar);
      }
      break;
      default:{
        ToastUtils.showToast('未匹配$text');
      }
        break;
    }
  }
}

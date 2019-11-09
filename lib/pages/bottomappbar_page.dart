import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

/**
 * 一般用于页面的底部
 *  BottomAppBar 和 BottomNavigationBar 的都可以做为 底部导航
 *  用BottomNavigationBar的好处就是按钮选中变化状态不用我们处理，组件已经封装好了，
 *  唯一需要处理的地方就是每个item按钮都对应一个页面，
 *
 * BottomAppBar的话导航栏每个图标都需要自己实现选中和未选中动态效果，
 * 还需要给每个按钮添加点击事件，比较繁琐。但是BottomAppBar比较灵活，
 * 可以实现很炫酷的效果
 */
class BottomAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('BottomAppBar'),
      ),
      body: Container(
        child: Center(
          child: Text(
            '内容'
          ),
        ),
      ),
      //FAB 按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.deepOrangeAccent,
        elevation: 0.0, // 去掉Z轴阴影
        child: Icon(Icons.add,color: Colors.white,size: 22.0,),
        onPressed: (){
          ToastUtils.showTopToast('add');
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepOrangeAccent,
        shape: CircularNotchedRectangle(),
//        notchMargin: 12.0, // floatingActionButtonLocation 与 BottomAppBar之间的距离
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                ToastUtils.showTopToast('首页');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.home,color: Colors.white,size: 20.0,),
                    Text('首页',style: TextStyle(color: Colors.white,fontSize: 14.0),)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: GestureDetector(
                  onTap: (){
                    ToastUtils.showTopToast('视频');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.video_library,color: Colors.white,size: 20.0,),
                      Text('视频',style: TextStyle(color: Colors.white,fontSize: 14.0),)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: GestureDetector(
                  onTap: (){
                    ToastUtils.showTopToast('相册');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.image,color: Colors.white,size: 20.0,),
                      Text('相册',style: TextStyle(color: Colors.white,fontSize: 14.0),)
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  ToastUtils.showTopToast('我的');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.person,color: Colors.white,size: 20.0,),
                    Text('我的',style: TextStyle(color: Colors.white,fontSize: 14.0),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

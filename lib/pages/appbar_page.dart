import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

/**
 * 一般用于页面的顶部
 */
class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('标题'),
        centerTitle: true, // 标题居中
        elevation: 1.0, //Z轴 阴影
        brightness: Brightness.light, //亮度   light 亮色， dark 暗色
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
            ToastUtils.showToast('leading');
          },
        ), // 左按钮，一般用于返回按钮
        backgroundColor: Colors.deepOrangeAccent, //背景色
        actions: <Widget>[ // 动作按钮，一般用于右侧的设置等
          IconButton(
            icon: Icon(Icons.sentiment_very_satisfied),
            onPressed: (){
              ToastUtils.showToast('设置1');
            },
          ),
          IconButton(
            icon: Icon(Icons.sentiment_very_dissatisfied),
            onPressed: (){
              ToastUtils.showToast('设置2');
            },
          ),
          PopupMenuButton<String>( // 与 actions 配合使用的菜单按钮
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              PopupMenuItem(
                value: 'find', //相当于 menu id
                child: Text('文本 find'),
              ),
              PopupMenuItem<String>(
                value: 'search', //相当于 menu id
                child: Text('文本 search'),
              ),
            ],
            onSelected: (String value){
              switch(value){
                case 'find':{
                  ToastUtils.showToast('点击了$value');
                }
                break;
                case 'search':{
                  ToastUtils.showToast('点击了$value');
                }
                break;

                default:{
                  ToastUtils.showToast('点击了$value');
                }
                break;
              }
            },
            onCanceled: (){ //关闭的监听
              ToastUtils.showToast('取消');
            },
          ),
        ],
        flexibleSpace: Icon(
          Icons.zoom_out_map,
          color: Colors.blueAccent,
        ),//此小组件堆叠在工具栏和标签栏后面。它的高度与应用栏的整体高度相同
      ),
      body: Container(
        child: Text(
          '内容',
        ),
      ),
    );
  }
}

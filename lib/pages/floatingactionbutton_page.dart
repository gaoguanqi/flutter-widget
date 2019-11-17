import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

/**
    const FloatingActionButton({
    Key key,
    this.child,//按钮显示的内容
    this.tooltip,//长按时显示的提示
    this.foregroundColor,//前景色，影响到文字颜色
    this.backgroundColor,//背景色
    this.heroTag = const _DefaultHeroTag(),//hero效果使用的tag,系统默认会给所有FAB使用同一个tag,方便做动画效果
    this.elevation = 6.0,//未点击时阴影值
    this.highlightElevation = 12.0,//点击下阴影值
    @required this.onPressed,
    this.mini = false,//FloatingActionButton有regular, mini, extended三种类型，默认为false即regular类型,true时按钮变小即mini类型，extended需要通过FloatingActionButton.extended()创建，可以定制显示内容
    this.shape = const CircleBorder(),//定义FAB的shape，设置shape时，默认的elevation将会失效,默认为CircleBorder
    this.clipBehavior = Clip.none,
    this.materialTapTargetSize,
    this.isExtended = false,//是否为”extended”类型
    })

    常用语结合 Scaffold 使用
 */

class FloatingActionButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            FloatingActionButton(
              child: IconButton(
                icon: Icon(
                  Icons.ac_unit,
                  color: Colors.deepOrangeAccent,
                ),
                color: Colors.blue,
              ),
              tooltip: '长按时的提示',
              foregroundColor: Colors.greenAccent,
              backgroundColor: Colors.purple,
              elevation: 1.0,
              highlightElevation: 6.0,
              mini: true,
              onPressed: () {
                ToastUtils.showToast('FloatingActionButton');
              },
            ),
          ],
        ),
      ),
    );
  }
}

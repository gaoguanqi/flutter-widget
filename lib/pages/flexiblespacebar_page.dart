import 'package:flutter/material.dart';

/**
 * 可折叠的应用栏
 */
class FlexibleSpaceBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView( // 可滑动的组件
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              expandedHeight: 210.0, //展开高度
              floating: false,//是否随着滑动隐藏标题
              pinned: true,//是否让标题固定在顶部
              flexibleSpace: FlexibleSpaceBar( // FlexibleSpaceBar 必须 使用 SliverAppBar包裹
                centerTitle: true, //标题故居中
                title: Text(
                  '标题',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                background: Image.network(
                    'http://b151.photo.store.qq.com/psb?/88aa4cf6-a419-49cd-bde6-fcb197e7fac9/EkWOkpObi8z0AXLRPj87yMm.LsuV372mB5Mx.RG0en4!/m/YZzYA1qfIAAAYt7aA1q3IAAAnull&bo=ngL2AQAAAAABBEg!&rf=photolist&t=5',
                    fit: BoxFit.cover
                ),
              ),
            ),
          ];
        },
        body: Center(
          child: Text(
              '内容'
          ),
        ),
      ),
    );
  }
}

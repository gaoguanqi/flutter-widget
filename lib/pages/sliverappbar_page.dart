import 'package:flutter/material.dart';
class SliverAppBarPage extends StatelessWidget {
  List<String> _list = List();

  SliverAppBarPage():super(){

    for(var i=1; i<=10; i++){
      _list.add('item$i');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                expandedHeight: 210.0, //展开高度
                floating: false,//是否随着滑动隐藏标题
                pinned: true,//是否让标题固定在顶部
                snap :false,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: false,
                      title: Text('标题',style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    background: Image.network(
                      'http://b73.photo.store.qq.com/psu?/88aa4cf6-a419-49cd-bde6-fcb197e7fac9/O1k4wco.EG1.ucd*KW48evkC1izAEwuuGC*RtuRF8GI!/b/YSMPiSugOwAAYoUZjCu9OwAA&bo=ngL2AQAAAAABJGg!&rf=viewer_4',
                      fit: BoxFit.fill,
                    ),
                  ),
              ),
            ];
        },
        body: ListView.builder(itemBuilder: (BuildContext context,int index){
            return Container(
              alignment: Alignment.centerLeft,
              child: Center(
                child: Text(
                  _list[index],
                ),
              ),
            );
          },
          scrollDirection: Axis.vertical, //设置滑动方向 Axis.horizontal 水平  默认 Axis.vertical 垂直
          primary: true,//false，如果内容不足，则用户无法滚动 而如果[primary]为true，它们总是可以尝试滚动
          itemExtent: 68.0,//确定每一个item的高度 会让item加载更加高效
          shrinkWrap: true,//内容适配
          itemCount: _list.length,
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_widget/app/config/data.dart';
import 'package:flutter_widget/app/global/router_manger.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _list = Data().HomeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Widget',
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: _body(context),
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
      default:{
        ToastUtils.showToast('未匹配$text');
      }
        break;
    }
  }
}

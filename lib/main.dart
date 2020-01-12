import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget/app/base/bloc.dart';
import 'package:flutter_widget/pages/provider_page.dart';
import 'package:flutter_widget/providers/like_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'app/global/router_manger.dart';

void main() {
  List<SingleChildWidget> provides = [
    ChangeNotifierProvider.value(value: CountProvide()), //默认 0
    ChangeNotifierProvider.value(value: LikeProvider()), //默认 0
//    ChangeNotifierProvider.value(value:CountProvide.ofCount(5)),//默认为5
  ];

  runApp(MultiProvider(
    providers: provides,
    child: MyApp(),
  ));

  if (Platform.isAndroid) {
    ///设置Android状态栏透明
    SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(statusBarColor: Colors.white,statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //1.使用BotToastInit直接包裹MaterialApp
    return BotToastInit(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Router.generateRoute,
        initialRoute: RouteName.home,
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        navigatorObservers: [BotToastNavigatorObserver()], //2.注册路由观察者
      ),
    );
  }
}

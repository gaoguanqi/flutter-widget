import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/provider_page.dart';
import 'package:provider/provider.dart';

import 'app/global/router_manger.dart';

void main(){
  List<SingleChildCloneableWidget> provides = [
    ChangeNotifierProvider.value(value:CountProvide()), //默认 0
//    ChangeNotifierProvider.value(value:CountProvide.ofCount(5)),//默认为5
  ];

  runApp(MultiProvider(
    providers: provides,
    child: MyApp(),
  ));
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
        navigatorObservers: [BotToastNavigatorObserver()],//2.注册路由观察者
      ),
    );
  }
}

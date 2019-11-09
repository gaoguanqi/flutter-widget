import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/align_page.dart';
import 'package:flutter_widget/pages/appbar_page.dart';
import 'package:flutter_widget/pages/bottomappbar_page.dart';
import 'package:flutter_widget/pages/home_page.dart';

import 'page_route_anim.dart';

class RouteName {
  static const String home = 'home';

  static const String align = 'align';
  static const String appBar = 'appBar';
  static const String bottomAppBar = 'bottomAppBar';

}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return AnimRouteBuilder(HomePage());
      case RouteName.align:
        return AnimRouteBuilder(AlignPage());
      case RouteName.appBar:
        return AnimRouteBuilder(AppBarPage());
      case RouteName.bottomAppBar:
        return AnimRouteBuilder(BottomAppBarPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}

/// Pop路由
class PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  PopRoute({@required this.child});

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;
}
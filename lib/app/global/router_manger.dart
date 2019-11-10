import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/align_page.dart';
import 'package:flutter_widget/pages/appbar_page.dart';
import 'package:flutter_widget/pages/bottomappbar_page.dart';
import 'package:flutter_widget/pages/bottomnavigationbar_page.dart';
import 'package:flutter_widget/pages/buttonbar_page.dart';
import 'package:flutter_widget/pages/constrainedbox_page.dart';
import 'package:flutter_widget/pages/decoratedbox_page.dart';
import 'package:flutter_widget/pages/flexiblespacebar_page.dart';
import 'package:flutter_widget/pages/home_page.dart';
import 'package:flutter_widget/pages/sliverappbar_page.dart';
import 'package:flutter_widget/pages/snackbar_page.dart';
import 'package:flutter_widget/pages/tabbar_page.dart';

import 'page_route_anim.dart';

class RouteName {
  static const String home = 'home';

  static const String align = 'align';
  static const String appBar = 'appBar';
  static const String bottomAppBar = 'bottomAppBar';
  static const String buttonBar = 'buttonBar';
  static const String flexibleSpaceBar = 'flexibleSpaceBar';
  static const String sliverAppBarPage = 'sliverAppBarPage';
  static const String snackBar = 'snackBar';
  static const String tabBar = 'tabBar';
  static const String bottomNavigationBar = 'bottomNavigationBar';
  static const String constrainedBox = 'constrainedBox';
  static const String decoratedBox = 'decoratedBox';

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
      case RouteName.buttonBar:
        return AnimRouteBuilder(ButtonBarPage());
      case RouteName.flexibleSpaceBar:
        return AnimRouteBuilder(FlexibleSpaceBarPage());
      case RouteName.sliverAppBarPage:
        return AnimRouteBuilder(SliverAppBarPage());
      case RouteName.snackBar:
        return AnimRouteBuilder(SnackBarPage());
     case RouteName.tabBar:
        return AnimRouteBuilder(TabBarPage());
     case RouteName.bottomNavigationBar:
        return AnimRouteBuilder(BottomNavigationBarPage());
     case RouteName.constrainedBox:
        return AnimRouteBuilder(ConstrainedBoxPage());
     case RouteName.decoratedBox:
        return AnimRouteBuilder(DecoratedBoxPage());
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
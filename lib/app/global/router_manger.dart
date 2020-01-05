import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/align_page.dart';
import 'package:flutter_widget/pages/anim_page.dart';
import 'package:flutter_widget/pages/appbar_page.dart';
import 'package:flutter_widget/pages/bloc_page.dart';
import 'package:flutter_widget/pages/bottomappbar_page.dart';
import 'package:flutter_widget/pages/bottomnavigationbar_page.dart';
import 'package:flutter_widget/pages/buttonbar_page.dart';
import 'package:flutter_widget/pages/card_page.dart';
import 'package:flutter_widget/pages/checkbox_page.dart';
import 'package:flutter_widget/pages/checkboxlisttitle_page.dart';
import 'package:flutter_widget/pages/constrainedbox_page.dart';
import 'package:flutter_widget/pages/decoratedbox_page.dart';
import 'package:flutter_widget/pages/dropdownbutton_page.dart';
import 'package:flutter_widget/pages/fittedbox_page.dart';
import 'package:flutter_widget/pages/flatbutton_page.dart';
import 'package:flutter_widget/pages/flexiblespacebar_page.dart';
import 'package:flutter_widget/pages/floatingactionbutton_page.dart';
import 'package:flutter_widget/pages/home_page.dart';
import 'package:flutter_widget/pages/iconbutton_page.dart';
import 'package:flutter_widget/pages/outlinebutton_page.dart';
import 'package:flutter_widget/pages/overflowbox_page.dart';
import 'package:flutter_widget/pages/provider_page.dart';
import 'package:flutter_widget/pages/raisedbutton_page.dart';
import 'package:flutter_widget/pages/rawmaterialbutton_page.dart';
import 'package:flutter_widget/pages/rotatedbox_page.dart';
import 'package:flutter_widget/pages/sizedbox_page.dart';
import 'package:flutter_widget/pages/sliverappbar_page.dart';
import 'package:flutter_widget/pages/snackbar_page.dart';
import 'package:flutter_widget/pages/tabbar_page.dart';
import 'package:flutter_widget/pages/tabbarview_page.dart';
import 'package:flutter_widget/pages/tiktok_page.dart';
import 'package:flutter_widget/pages/tiktoklogin_page.dart';

import 'page_route_anim.dart';

class RouteName {
  static const String home = 'Home';

  static const String align = 'Align';
  static const String appBar = 'AppBar';
  static const String bottomAppBar = 'BottomAppBar';
  static const String buttonBar = 'ButtonBar';
  static const String flexibleSpaceBar = 'FlexibleSpaceBar';
  static const String sliverAppBarPage = 'SliverAppBarPage';
  static const String snackBar = 'SnackBar';
  static const String tabBar = 'TabBar';
  static const String tabBarView = 'TabBarView';
  static const String bottomNavigationBar = 'BottomNavigationBar';
  static const String constrainedBox = 'ConstrainedBox';
  static const String decoratedBox = 'DecoratedBox';
  static const String provider = 'Provider';
  static const String fittedBox = 'FittedBox';
  static const String overflowBox = 'OverflowBox';
  static const String rotatedBox = 'RotatedBox';
  static const String sizedBox = 'SizedBox';
  static const String dropdownButton = 'DropdownButton';
  static const String flatButton = 'FlatButton';
  static const String floatingActionButton = 'FloatingActionButton';
  static const String iconButton = 'IconButton';
  static const String outLineButton = 'OutLineButton';
  static const String raisedButton = 'RaisedButton';
  static const String rawMaterialButton = 'RawMaterialButton';
  static const String card = 'Card';
  static const String checkbox = 'Checkbox';
  static const String checkboxListTitle = 'CheckboxListTitle';
  static const String bloc = 'Bloc';
  static const String tikTok = 'TikTok';
  static const String animPage = 'AnimPage';
  static const String tikTokLogin = 'TikTokLogin';

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
      case RouteName.tabBarView:
        return AnimRouteBuilder(TabBarViewPage());
     case RouteName.bottomNavigationBar:
        return AnimRouteBuilder(BottomNavigationBarPage());
     case RouteName.constrainedBox:
        return AnimRouteBuilder(ConstrainedBoxPage());
     case RouteName.decoratedBox:
        return AnimRouteBuilder(DecoratedBoxPage());
      case RouteName.provider:
        return AnimRouteBuilder(ProviderPage());
      case RouteName.fittedBox:
        return AnimRouteBuilder(FittedBoxPage());
      case RouteName.overflowBox:
        return AnimRouteBuilder(OverflowBoxPage());
      case RouteName.rotatedBox:
        return AnimRouteBuilder(RotatedBoxPage());
      case RouteName.sizedBox:
        return AnimRouteBuilder(SizedBoxPage());
      case RouteName.dropdownButton:
        return AnimRouteBuilder(DropdownButtonPage());
      case RouteName.flatButton:
        return AnimRouteBuilder(FlatButtonPage());
      case RouteName.floatingActionButton:
        return AnimRouteBuilder(FloatingActionButtonPage());
      case RouteName.iconButton:
        return AnimRouteBuilder(IconButtonPage());
      case RouteName.outLineButton:
        return AnimRouteBuilder(OutLineButtonPage());
      case RouteName.raisedButton:
        return AnimRouteBuilder(RaisedButtonPage());
      case RouteName.rawMaterialButton:
        return AnimRouteBuilder(RawMaterialButtonPage());
      case RouteName.card:
        return AnimRouteBuilder(CardPage());
      case RouteName.checkbox:
        return AnimRouteBuilder(CheckboxPage());
      case RouteName.checkboxListTitle:
        return AnimRouteBuilder(CheckboxListTitlePage());
      case RouteName.bloc:
        return AnimRouteBuilder(BlocPage());
      case RouteName.tikTok:
        return AnimRouteBuilder(TikTokPage());
      case RouteName.animPage:
        return AnimRouteBuilder(AnimPage());
      case RouteName.tikTokLogin:
        return AnimRouteBuilder(TikTokLoginPage());
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
import 'package:flutter/material.dart';

class AnimRouteBuilder extends PageRouteBuilder {
  final Widget page;

  AnimRouteBuilder(this.page)
      : super(
            opaque: false,
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionDuration: Duration(milliseconds: 0),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) => child) {

  }
}

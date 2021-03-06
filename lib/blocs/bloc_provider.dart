import 'package:flutter/material.dart';
import 'package:flutter_widget/blocs/simple_bloc.dart';

class BlocProvider extends InheritedWidget{

  final SimpleBloc simpleBloc = SimpleBloc();

  BlocProvider({Key key,Widget child}):super(key:key,child:child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}
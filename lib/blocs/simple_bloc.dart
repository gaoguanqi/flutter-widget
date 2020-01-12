import 'dart:async';

import 'package:flutter_widget/app/base/bloc.dart';
import 'package:rxdart/rxdart.dart';

class SimpleBloc extends BlocBase{

  int _count = 0;
  var _subject = BehaviorSubject<int>();

  Stream<int> get stream => _subject.stream;
  int get value => _count;


  @override
  void dispose() {
    _subject.close();
  }

}
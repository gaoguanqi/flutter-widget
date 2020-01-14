import 'dart:async';

import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;

    return Center(
      child: ActionChip(
        label: Text('0'),
        onPressed: (){
//              _counterBloc.log();
          _counterBloc.counter.add(1);
        },
      )
    );
  }
}

class CounterActionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    CounterBloc _counterBloc = CounterProvider.of(context).bloc;

    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
//        _counterBloc.log();
        _counterBloc.counter.add(1);
      },
    );
  }
}






class CounterProvider extends InheritedWidget{
  final Widget child;
  final CounterBloc bloc;

  CounterProvider({this.child,this.bloc}):super(child:child);

  static CounterProvider of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<CounterProvider>();


  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class CounterBloc{

  int _count = 0;

  final _counterActionController = StreamController<int>();
  StreamSink<int> get counter => _counterActionController.sink;

  final _counterController = StreamController<int>();
  Stream<int> get count => _counterActionController.stream;

  CounterBloc(){
    _counterActionController.stream.listen(onData);
  }


  void onData(int data){
    _count  = data + _count;
    _counterController.add(_count);
  }

  void disponse(){
    _counterActionController.close();
    _counterController.close();
  }

  void log(){
    print('block');
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_widget/app/base/counter_bloc_demo.dart';

class BlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      bloc: CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bloc'),
        ),
        body: CounterHome(),
        floatingActionButton: CounterActionButton(),
      ),
    );
  }
}

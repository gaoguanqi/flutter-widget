import 'package:flutter/material.dart';
import 'package:flutter_widget/app/base/bloc.dart';
class BlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    int _count = 0;
    final bloc = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(''),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add,size: 42.0,),
        onPressed: (){

        },
      ),
    );
  }
}

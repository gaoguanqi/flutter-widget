import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _countProvide = Provider.of<CountProvide>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Container(
          color: Colors.blue.shade300,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    '点击:${_countProvide.count}',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          color: Colors.deepPurpleAccent,
                          disabledColor: Colors.deepPurpleAccent.shade700,
                          child: Text('+',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                          onPressed: (){
                            _countProvide.add();
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          color: Colors.purple,
                          disabledColor: Colors.purple.shade700,
                          child: Text('-',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                          onPressed: (){
                            _countProvide.sub();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class CountProvide with ChangeNotifier{
  int _count = 0;
  CountProvide();
  CountProvide.ofCount(this._count);


  get count => _count;

  void add(){
    _count++;
    notifyListeners();
  }

  void sub(){
    _count--;
    notifyListeners();
  }
}

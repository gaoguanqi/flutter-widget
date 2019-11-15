import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';


class DropdownButtonPage extends StatefulWidget {
  @override
  _DropdownButtonPageState createState() => _DropdownButtonPageState();
}

class _DropdownButtonPageState extends State<DropdownButtonPage> {
  int _value;
  String _txt = '下拉选择你想要的数据';
  List<String> itemTxt = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
  ];
  List<DropdownMenuItem<int>> items = [];

  @override
  void initState() {
    super.initState();

    for(var i = 0; i <itemTxt.length;i++){
      DropdownMenuItem<int> item = DropdownMenuItem<int>(
        child: Text(itemTxt[i]),
        value: i,
      );
      items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: DropdownButton(
          items: items,
          hint: Text(_txt),//当没有默认值的时候可以设置的提示
          value: _value,
          icon: Icon(Icons.zoom_out,color: Colors.deepOrange,),
          iconSize: 48.0,
          style: TextStyle(color: Colors.blue,fontSize: 20.0,fontWeight: FontWeight.bold),
          onChanged: (value){
           setState(() {
             _value = value;
             _txt = itemTxt[value];
             ToastUtils.showToast('点击:$_value');
           });
          },
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/toast_utils.dart';

class DropdownButtonPage extends StatelessWidget {
  var _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: DropdownButton(
          items: _items(),
          hint: Text('下拉选择你想要的数据'),//当没有默认值的时候可以设置的提示
          value: _value,
          icon: Icon(Icons.zoom_out,color: Colors.deepOrange,),
          iconSize: 48.0,
          style: TextStyle(color: Colors.blue,fontSize: 20.0,fontWeight: FontWeight.bold),
          onChanged: (value){

            ToastUtils.showToast('点击:$value');
          },
        ),
      ),
    );
  }

  _items() {
    return <DropdownMenuItem>[
      DropdownMenuItem<String>(
        child: Text(
          'item1'
        ),
        value: '1',
      ),
      DropdownMenuItem<String>(
        child: Text(
            'item2'
        ),
        value: '2',
      ),

      DropdownMenuItem<String>(
        child: Text(
            'item3'
        ),
        value: '3',
      ),

      DropdownMenuItem<String>(
        child: Text(
            'item4'
        ),
        value: '4',
      ),
      DropdownMenuItem<String>(
        child: Text(
            'item5'
        ),
        value: '5',
      ),
    ];
  }

}

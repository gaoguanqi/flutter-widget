import 'package:flutter/material.dart';
import 'package:flutter_widget/app/global/page_route_anim.dart';

class AnimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anim Page'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Text(
                  'content'
              ),
              flex: 1,
            ),
            IconButton(
              icon: Icon(Icons.share),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){return Page1();}));
              },
            ),
          ],
        ),
      ),
    );
  }
}


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page1'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'page1'
        ),
      ),
    );
  }
}


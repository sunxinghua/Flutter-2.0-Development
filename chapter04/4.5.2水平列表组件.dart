import 'package:flutter/material.dart';
void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ListView Demo',
      home: new ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('ListView Dmoe'),
        leading: new Icon(Icons.menu,size: 40,color: Colors.white,),
      ),
      body: Container(
        height: 100,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          padding: new EdgeInsets.only(left: 10,top: 0,right: 10,bottom: 0),//给子元素设置左、上、右、下的padding
          children: <Widget>[
            //数据源
            Container(
              width: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              color: Colors.green,
            ),
            Container(
              width: 100,
              color: Colors.amberAccent,
            ),
            Container(
              width: 100,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
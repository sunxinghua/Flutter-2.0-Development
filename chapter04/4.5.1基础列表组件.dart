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
      ),
      body: new ListView(
        padding: new EdgeInsets.only(left: 10,top: 0,right: 10,bottom: 0),//给子元素设置左、上、右、下的padding
        children: <Widget>[
          //数据源
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第一条数据'),),
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第二条数据'),),
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第三条数据'),),
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第四条数据'),),
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第五条数据'),),
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第六条数据'),),
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第七条数据'),),
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第八条数据'),),
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第九条数据'),),
          ListTile(leading: new Icon(Icons.add_circle_outline),title: new Text('第十条数据'),),
        ],
      ),
    );
  }
}
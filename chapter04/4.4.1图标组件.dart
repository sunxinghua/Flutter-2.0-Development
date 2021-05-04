import 'package:flutter/material.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '图标组件Demo',
      home: new IconDemo(),
    );
  }
}

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('图标组件Demo'),
      ),
      body: new Center(
        child: new Icon(
          Icons.android,//图标Icon
          color: Colors.green,//图标颜色，设置为绿色，原本的颜色是黑色的
          size: 150.0,//Icon的大小
        ),
      ),
    );
  }
}
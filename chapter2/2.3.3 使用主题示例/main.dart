import 'package:flutter/material.dart';
void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '使用自定义主题',
      theme: new ThemeData( //设定应用程序的主题数据
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue,//主要背景色设置为亮蓝色
        accentColor: Colors.red,//前景色为红色
      ),
      home: new MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('使用自定义主题'),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).accentColor,//使用自定义主题
          child: new Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
      floatingActionButton: new Theme(//覆盖accentColorColors.yellow
        data: Theme.of(context).copyWith(accentColor: Colors.yellow),
        child: new FloatingActionButton(
          onPressed: null,
          child: new Icon(Icons.add),
        ),
      ),
    );
  }
}
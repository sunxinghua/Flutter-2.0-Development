import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main()=>runApp(new MaterialApp(home: new MyApp(),));
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("使用三方包示例"),
      ),
      body: new Center(
        child: new RaisedButton(
          child: Text("打开搜狐"),
          onPressed:(){          //添加按钮点击响应事件
            const url = "http://www.sohu.com/";
            launch(url);//调用launch函数打开网址
          },
        ),
      ),
    );
  }
}
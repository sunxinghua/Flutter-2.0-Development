import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RaisedButton示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('RaisedButton组件示例'),
        ),
        body:RaisedButton.icon(
            onPressed: () {
              //按下事件处理
              print("执行返回主页操作");
            },
            icon:Icon(Icons.account_balance),
            label: Text('点击返回首页')
        )
      ),
    );
  }
}
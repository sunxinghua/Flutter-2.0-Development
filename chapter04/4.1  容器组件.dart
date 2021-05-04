import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器组件示例1'),
        ),
        body: Center(
          //添加容器
          child: Container(
            width: 200.0,
            height: 200.0,
            //添加边框装饰效果
            decoration: BoxDecoration(
              color: Colors.white,
              //设置上下左右四个边框样式
              border: new Border.all(
                color: Colors.blue, //边框颜色
                width: 5.0, //边框粗细
              ),
              borderRadius: const BorderRadius.all(const Radius.circular(8.0)), //设置边框的圆角
            ),
            child: Text(
              'Android',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}
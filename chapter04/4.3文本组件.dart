import 'package:flutter/material.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '文本组件Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('文本组件Demo'),
        ),
        body: new Column(
          children: <Widget>[
            new Text(
              '第一个文本Demo',
              style: new TextStyle(
                color: Colors.amberAccent,
                fontSize: 20,
              ),
            ),
            new Text(
              '第二个文本Demo',
              style: new TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
              ),
              textScaleFactor: 1.5,//放大50%
            ),
            new Text(
              '第三个文本Demo（Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。）',
              style: new TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
              textAlign: TextAlign.end,//右对齐
            ),
            new Text(
              '''第四个文本Demo
              换到第二行，看看能不能显示的出来呢,Flutter是谷歌的移动UI框架。''',
              style: new TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
              maxLines: 2,//最大显示2行

            ),
            new Text(
              '第五个Demo，设置水平方向文案超出屏幕后，显示...（Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。）',
              style: new TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,//水平方向超出屏幕显示...
            )
          ],
        ),//垂直方向排列
      ),
    );
  }
}
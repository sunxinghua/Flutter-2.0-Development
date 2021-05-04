import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      title:'ListView widget',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          body:GridView.count(
            padding:const EdgeInsets.all(60.0),
            ////水平子Widget之间间距
            crossAxisSpacing: 10.0,
            crossAxisCount: 3,
            children: <Widget>[
              const Text('张三'),
              const Text('李四'),
              const Text('王五'),
              const Text('我喜欢玩游戏'),
              const Text('我喜欢看书'),
              const Text('我喜欢吃火锅')
            ],
          )
      ),
    );
  }
}

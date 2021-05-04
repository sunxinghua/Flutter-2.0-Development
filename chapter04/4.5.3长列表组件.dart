import 'package:flutter/material.dart';

void main() => runApp(DemoApp());


class DemoApp extends StatelessWidget {

  //初始化数据源，使用generate方法产生200条数据
  final List<String> items = new List<String>.generate(200, (i)=>"Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '长列表组件',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('长列表组件'),
          leading: Icon(Icons.menu,size: 30,color: Colors.white,),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search), onPressed: null)
          ],
        ),

        /*使用ListView.builder来构造列表项
          ListView.builder 接受两个参数：

        itemCount: int
        itemBuilder: @required IndexedWidgetBuilder itemBuilder,
        1、ListView.builder 的参数 itemCount
       itemCount 这个参数声明了 list 的长度，这个值表明 ListView 中会存在多少个 item 子项

        2、ListView.builder 的参数 itemBuilder
      从 itemBuilder 的表面上看也能够知道它是用来构造每个子项组件的，它的类型是 IndexedWidgetBuilder，其实是一个方法，接受 context 和 index 两个参数。

      context：构造的上下文
      index: 当前索引*/

        body: new ListView.builder(
          itemCount: items.length,
          //列表构造器
          itemBuilder: (context,index){
            return new ListTile(
              leading: Icon(Icons.add_circle),
              title: new Text('${items[index]}'),

            );
          },
        ),
      ),
    );
  }
}
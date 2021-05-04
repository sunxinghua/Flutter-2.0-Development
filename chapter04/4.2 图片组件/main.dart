import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Image demo',
    home: ImageDemo(),
  )
  );
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //居中展示
    return Center(
      //添加网络图片
      child: Image.asset(
        //图片url
        'images/flutter.png',
        //填充模式
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
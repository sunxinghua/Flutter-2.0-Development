import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatefulWidget{
  @override
  _DemoAppState createState() => new _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  String userName;
  String userPwd;
  //全局key用来获取Form表单组件
  GlobalKey<FormState> globalKey = new GlobalKey<FormState>();
  void check(){

    //读取当前的Form状态
    var loginForm = globalKey.currentState;
    //验证表单
    if(loginForm.validate()){
      loginForm.save();
      Fluttertoast.showToast(msg: '登录成功！',toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.BOTTOM,textColor: Colors.white);
    }
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'From表单Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Form表单Demo'),
          leading: Icon(Icons.menu,size: 30,),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search),iconSize: 30, onPressed: null)
          ],
        ),
        body: new Column(
          children: <Widget>[
            new Form(
              //设置globalKey，用于后面获取FormState。
              key: globalKey,
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: '请输入用户名',
                    ),
                    onSaved: (value){
                      userName = value;
                    },
                  ),
                  new TextFormField(
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.only(left: 0,top: 10,right: 0,bottom: 10),
                        hintText: '请输入密码',
                        hintStyle: new TextStyle(fontSize: 16,color: Colors.red)
                    ),
                    obscureText: true,
                    validator: (value){
                      return value.length < 6 ? '密码长度不够6位' : null;
                    },
                    onSaved: (value){
                      userPwd = value;
                    },
                  )
                ],
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 20,horizontal: 0),
              width: 150,
              height: 50,
              child: new SizedBox(
                child: new RaisedButton(
                  onPressed: check,
                  color: Colors.lightBlue,
                  child: new Text(
                    '确定',
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
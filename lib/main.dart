// ignore_for_file: camel_case_types

import 'package:anhubao/SqliteHelper.dart';
import 'package:anhubao/servicepage.dart';
import 'privacypage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './firstpage.dart';
import './signinpage.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:collection/collection.dart';
import '/thirdpage.dart';
import '/secondpage.dart';
import 'settingpage.dart';


import 'dart:io';
import 'package:path_provider/path_provider.dart';



TextEditingController lgusernameController = new TextEditingController();
TextEditingController lgpasswordController = new TextEditingController();


bool islogin = false;
bool ischecked = true ;
var list1=[];
var list2=[];
int i=0;
var nickname='尚未登录';
var email='尚未添加电子邮箱';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {



  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '安护宝',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

//登录页
class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() {
    return new _loginpageState();
  }
}

class _loginpageState extends State<loginpage>{
  final lgdb = DBManager.db;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Text('您好，欢迎使用安护宝',style: TextStyle(fontSize:28,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: lgusernameController,
                decoration: const InputDecoration(
                  labelText: '用户名',
                ),
                style: TextStyle(fontSize: 16),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: lgpasswordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: '用户密码'),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              PrivacyWidget(
                  onChanged: (value){}
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 60,
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('登录'),
                  onPressed: (){

                    var lgusername=lgusernameController.text;
                    var lgpassword=lgpasswordController.text;

                    /*if(ischecked==false){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text('安护宝'),
                              content: Text('请先同意用户协议!'),
                              actions: <Widget>[
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return loginpage();
                                  }));

                                }, child: Text('确认')),
                              ],
                            );
                          }
                      );
                    }*/
                    if(lgusername==''||lgpassword==''){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text('安护宝'),
                              content: Text('用户名或密码为空!'),
                              actions: <Widget>[
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return loginpage();
                                  }));

                                }, child: Text('确认')),
                              ],
                            );
                          }
                      );
                    }

                    else if(list1.isEmpty||list2.isEmpty){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text('安护宝'),
                              content: Text('用户名或密码错误!'),
                              actions: <Widget>[
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return loginpage();
                                  }));

                                }, child: Text('确认')),
                              ],
                            );
                          }
                      );
                    }

                    else if(list1.indexOf(lgusername)==list2.indexOf(lgpassword)&&list1.indexOf(lgusername)!=-1){
                      islogin=true;
                      nickname=lgusername;
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text('安护宝'),
                              content: Text('登录成功!'),
                              actions: <Widget>[
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return MyHome();
                                  }));

                                }, child: Text('确认')),
                              ],
                            );
                          }
                      );
                    }

                    else{
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text('安护宝'),
                              content: Text('用户名或密码错误!'),
                              actions: <Widget>[
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return loginpage();
                                  }));

                                }, child: Text('确认')),
                              ],
                            );
                          }
                      );

                    }
                    lgusernameController.text='';
                    lgpasswordController.text='';
                    lgdb.getDBInfo();
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.white,
                  textColor: Colors.blue,
                  child: Text('注册'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return signinpage();
                    }));

                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }

}



//主页
class MyHome extends StatelessWidget{
  @override


  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(islogin == false){
          showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  title: Text('安护宝'),
                  content: Text('请先登录!'),
                  actions: <Widget>[

                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return loginpage();
                      }));

                    }, child: Text('确认')),
                  ],
                );
                islogin=true;
              }
          );

        }
      },
      child: DefaultTabController(

          length: 3,
          child:Scaffold(

            appBar: AppBar(
              title: Text('安护宝'),
              centerTitle: true,
              actions: [
                PopupMenuButton<int>(
                  itemBuilder: (context) =>[
                    PopupMenuItem(
                      value: 0,
                      child: Text('定位'),
                    ),
                    PopupMenuDivider(
                      height: 2,
                    ),
                    PopupMenuItem(
                      child: Text('萧山区'),
                    ),
                    PopupMenuItem(
                      child: Text('上城区'),
                    ),
                    PopupMenuItem(
                      child: Text('西湖区'),
                    ),
                    PopupMenuItem(
                      child: Text('江干区'),
                    ),
                    PopupMenuItem(
                      child: Text('拱墅区'),
                    ),
                    PopupMenuItem(
                      child: Text('下城区'),
                    ),
                    PopupMenuItem(
                      child: Text('滨江区'),
                    ),
                  ],
                ),
              ],
            ),
            drawer: Drawer(
              child: ListView(children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(nickname),
                  accountEmail: Text(email),
                  currentAccountPicture: CircleAvatar(),
                ),
                ListTile(
                  leading: Icon(Icons.assignment),
                  title: Text('全部订单'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.room),
                  title: Text('地址管理'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text('优惠券'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('我的技能'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('关于我们'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(),
                GestureDetector(
                  child:ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('设置'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return settingpage();
                    }));
                  },
                ),

              ],),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: TabBar(tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                  text:'首页',
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text:'寻找',
                ),
                Tab(
                  icon: Icon(Icons.message),
                  text:'消息',
                ),
              ],),
            ),
            body: TabBarView(children: <Widget>[
              firstpage(),
              secondpage(),
              thirdpage(),
            ],),
          )
      )
    );
  }
}



//用户协议和隐私政策
class PrivacyWidget extends StatefulWidget {
  const PrivacyWidget({Key? key, required this.onChanged}) : super(key: key);
  final ValueChanged<bool?> onChanged;

  @override
  _PrivacyWidgetState createState() => _PrivacyWidgetState();
}
class _PrivacyWidgetState extends State<PrivacyWidget> {
  bool? checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: checked,
            onChanged: (value) {

              widget.onChanged(value);
              setState(() {
                checked = value;
                ischecked=!ischecked;
              });

            }),
        GestureDetector(
          child: Container(
            child: Text('同意',style: TextStyle(fontSize: 14),),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return servicepage();
            }));
          },
          child: Container(
            child: Text('<服务协议>',style: TextStyle(fontSize: 14, color: Colors.blue),),
          ),
        ),
        GestureDetector(
          child: Container(
            child: Text('和',style: TextStyle(fontSize: 14),),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return privacypage();
            }));
          },
          child: Container(
            child: Text('<隐私政策>',style: TextStyle(fontSize: 14, color: Colors.blue),),
          ),
        ),
      ],
    );
  }
}


























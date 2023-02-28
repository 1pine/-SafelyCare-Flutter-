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
import 'main.dart';
import 'SqliteHelper.dart';


TextEditingController usernameController =new TextEditingController();
TextEditingController userpasswordController =new TextEditingController();
TextEditingController affirmpasswordController =new TextEditingController();



class signinpage extends StatefulWidget{
  @override
  _signinpageState createState() {
    return new _signinpageState();
  }
}

class _signinpageState extends State<signinpage>{
  final mydb = DBManager.db;
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
            Text('注册',style: TextStyle(fontSize:28,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: '用户名',
              ),
              style: TextStyle(fontSize: 16),
              keyboardType: TextInputType.text,
              inputFormatters: <TextInputFormatter>[
                LengthLimitingTextInputFormatter(16)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: userpasswordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: '用户密码'),
              style: TextStyle(fontSize: 16),
              inputFormatters: <TextInputFormatter>[
                LengthLimitingTextInputFormatter(16)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: affirmpasswordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: '确认用户密码'),
              style: TextStyle(fontSize: 16),
              inputFormatters: <TextInputFormatter>[
                LengthLimitingTextInputFormatter(16)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text('用户名、密码均需小于16位'),
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
                child: Text('注册'),
                onPressed: ()async{

                  var username=usernameController.text;
                  var userpassword=userpasswordController.text;
                  var affirmpassword=affirmpasswordController.text;
                  UserModel user = UserModel(username: username, paseword: userpassword);
                  mydb.getCheckDatabase();
                  mydb.initDB();
                  mydb.insertToTab(username,userpassword);

                  if(userpassword==affirmpassword&&username!=''){

                    list1.add(username);
                    list2.add(userpassword);

                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text('安护宝'),
                            content: Text('注册成功!'),
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

                    print(list1);
                    print(list2);

                  }
                  else if(username==''){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text('安护宝'),
                            content: Text('用户名为空！'),
                            actions: <Widget>[
                              TextButton(onPressed: (){
                                Navigator.pop(context);
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
                            content:Text('两次密码输入不一致或密码为空！'),
                            actions: <Widget>[
                              TextButton(onPressed: (){
                                Navigator.pop(context);
                              },child: Text('确认'),)
                            ],
                          );
                        }
                    );
                  };
                  usernameController.text='';
                  userpasswordController.text='';
                  affirmpasswordController.text='';
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


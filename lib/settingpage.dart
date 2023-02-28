import 'package:anhubao/main.dart';
import 'package:flutter/material.dart';
import 'settingpage1.dart';


class settingpage extends StatefulWidget {
  @override
  _settingpageState createState(){
    return new _settingpageState();
  }
}

class _settingpageState extends State<settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white30,
              child: GestureDetector(
                child: ListTile(
                  title:Text('账号与安全'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return settingpage1();
                  }));
                },
              ),
            ),
            Container(
              color: Colors.white30,
              child: ListTile(
                title:Text('青少年模式'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Container(
              color: Colors.white30,
              child: ListTile(
                title:Text('关怀模式'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Container(
              color: Colors.white30,
              child: ListTile(
                title:Text('消息通知'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Container(
              color: Colors.white30,
              child: ListTile(
                title:Text('帮助'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Container(
              color: Colors.white30,
              child: GestureDetector(
                child: ListTile(
                  title: Text('退出登录'),
                  trailing: Icon(Icons.highlight_off_rounded),
                ),
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('安护宝'),
                          content: Text('已退出登录!'),
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
                  nickname='尚未登录';
                  email='尚未添加电子邮箱';
                  islogin=false;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


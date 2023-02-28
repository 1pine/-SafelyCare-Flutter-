import 'package:flutter/material.dart';
import 'main.dart';
import 'settingpage.dart';

TextEditingController nicknameController=new TextEditingController();

class nicknamepage extends StatefulWidget {
  @override
  _nicknamepageState createState() {
    return new _nicknamepageState();
  }
}

class _nicknamepageState extends State<nicknamepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户名'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('当前用户名: $nickname'),
              ],
            ),
            SizedBox(height: 20,),
            TextField(
              controller: nicknameController,
              obscureText: false,
              decoration: const InputDecoration(labelText: '新用户名'),
              style: TextStyle(fontSize: 16),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20,),
            MaterialButton(
              minWidth: 200,
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('更改用户名'),
              onPressed:() async{
                var newnickname=nicknameController.text;
                if(newnickname==''){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('安护宝'),
                          content: Text('用户名不能为空！'),
                          actions: <Widget>[
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return nicknamepage();
                              }));

                            }, child: Text('确认')),
                          ],
                        );
                        islogin=true;
                      }
                  );
                }
                else{
                  nickname=newnickname;

                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('安护宝'),
                          content: Text('更改成功！'),
                          actions: <Widget>[
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return MyHome();
                              }));

                            }, child: Text('确认')),
                          ],
                        );
                        islogin=true;
                      }
                  );
                  nicknameController.text='';
                }

              },
            ),
          ],
        ),
      ),
    );
  }
}

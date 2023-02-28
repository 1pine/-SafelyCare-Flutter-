import 'package:flutter/material.dart';
import 'nicknamepage.dart';
import 'emailpage.dart';

class settingpage1 extends StatefulWidget {
  @override
  _settingpage1State createState() {
    return new _settingpage1State();
  }
}

class _settingpage1State extends State<settingpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('账号与安全'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white30,
              child: GestureDetector(
                child: ListTile(
                  title:Text('用户名'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return nicknamepage();
                  }));
                },
              ),
            ),
            Container(
              color: Colors.white30,
              child: GestureDetector(
                child: ListTile(
                  title:Text('电子邮箱'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return emailpage();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'main.dart';

TextEditingController emailController = new TextEditingController();

class emailpage extends StatefulWidget {
  @override
  _emailpageState createState(){
    return new _emailpageState();
  }
}

class _emailpageState extends State<emailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('电子邮箱'),
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
                Text('当前邮箱: $email'),
              ],
            ),
            SizedBox(height: 20,),
            TextField(
              controller: emailController,
              obscureText: false,
              decoration: const InputDecoration(labelText: '新电子邮箱'),
              style: TextStyle(fontSize: 16),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20,),
            MaterialButton(
              minWidth: 200,
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('更改电子邮箱'),
              onPressed:() async{
                var newemail=emailController.text;
                if(newemail==''){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('安护宝'),
                          content: Text('电子邮箱不能为空！'),
                          actions: <Widget>[
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return emailpage();
                              }));

                            }, child: Text('确认')),
                          ],
                        );
                        islogin=true;
                      }
                  );
                }
                else{
                  email=newemail;

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
                  emailController.text='';
                }

              },
            ),
          ],
        ),
      ),
    );
  }
}

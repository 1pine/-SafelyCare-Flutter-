import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/main.dart';
class servicepage extends StatelessWidget{
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
            Text('服务协议',style: TextStyle(fontSize:28,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            Text('       —、特别提示在此特别提醒您（用户）在注册成为***用户之前，请认真阅读本〈***用户服务协议》（以下简称协议”），确保您充分理解本协议中各条款。请您审慎阅读并选择接受或不接受本协议。您同意并点击确认本协议条款且完成注册程序后，才能成为***的正式注册用户，并享受***的各类服务。您的注册、登录、使用等行为将视为对本协议的接受，并同意接受本协议各项条款的约束。若您不同意本协议，或对本协议中的条款存在任何疑问，请您立即停止***用户注册程序，并可以选择不使用本网站服务。本协议约定***与用户之间关于*** ”服务（以下简称服务”）的权利义务。用户”是指注册、登录、使用本服务的个人、单位。本协议可由***随时更新，更新后的协议条款一旦公布即代替原来的协议条款，恕不再另行通知，用户可在本APP中查阅最新版协议条款。在修改协议条款后，如果用户不接受修改后的条款，请立即停止使用***提供的服务，用户继续使用***提供的服务将被视为接受修改后的协议。'),
          ],
        ),
      ),
    );
  }
}
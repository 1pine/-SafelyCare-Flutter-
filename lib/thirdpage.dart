import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/chatpage.dart';
import '/main.dart';
class thirdpage extends StatefulWidget{
  @override
  _thirdpageState createState(){
    return new _thirdpageState();
  }
}

class _thirdpageState extends State<thirdpage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                /*Navigator.push(context, MaterialPageRoute(builder: (context){
                  return chatpage();
                }));*/
              },
              child: Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child:CircleAvatar(
                        radius: 30,
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('张三',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                              Text('19:30'),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text('你好！'),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('李四',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text('19:30'),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('你好！'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('王五',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text('19:30'),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('你好！'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('赵六',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text('19:30'),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('你好！'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('孙七',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text('19:30'),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('你好！'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('周八',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text('19:30'),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('你好！'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('吴九',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text('19:30'),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('你好！'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('郑十',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text('19:30'),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('你好！'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('松',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text('19:30'),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('你好！'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Mike',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),),
                            Text('19:30'),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('你好！'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
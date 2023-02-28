import 'dart:async';
import '/firstpage_1.dart';
import '/firstpage_2.dart';
import '/firstpage_3.dart';
import '/firstpage_4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/main.dart';

class firstpage extends StatefulWidget{
  @override
  _firstpageState createState() {
    return new _firstpageState();
  }
}

class _firstpageState extends State<firstpage>{

  PageController _pageController =new PageController() ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildBanner(),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text('我要护理',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/baby.png'),
                    radius: 40,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return firstpage_1();
                    }));
                  },
                ),
                GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pic5.png'),
                    radius: 40,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return firstpage_2();
                    }));
                  },
                ),
                GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pic8.jpg'),
                    radius: 40,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return firstpage_3();
                    }));
                  },
                ),
                GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pic6.jpg'),
                    radius: 40,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return firstpage_4();
                    }));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(' 婴儿护理 ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                Text('  产妇护理 ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                Text(' 老人护理 ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                Text(' 病人护理',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
              ],
            ),

            Container(
              height: 5,
              color: Colors.grey,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text('附近护工',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
            ),
            Divider(
              height: 4,
              color: Colors.black,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white30,
                  child:Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/shot1.jpeg"),
                          radius: 70,
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('姓名:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('王五'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('性别：',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('男'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('年龄:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('35岁'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('期望薪资：',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('30/h'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('个人简介:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('这是个人简介'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 4,
                  color: Colors.black,
                ),
                Container(
                  color: Colors.white30,
                  child:Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/shot4.jpeg"),
                          radius: 70,
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('姓名:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('李四'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('性别：',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('男'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('年龄:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('35岁'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('期望薪资：',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('30/h'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('个人简介:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('这是个人简介'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height:4,
                  color: Colors.black,
                ),
                Container(
                  color: Colors.white30,
                  child:Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/shot6.jpeg"),
                          radius: 70,
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('姓名:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('张三'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('性别：',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('男'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('年龄:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('35岁'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('期望薪资：',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('30/h'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('个人简介:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text('这是个人简介'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 4,
                  color: Colors.black,
                ),
                Text('已经到底啦~'),
              ],
            ),
          ],
        ),

      ),
    );
  }

  Widget buildBanner(){
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(children: [
        buildBannerWidget(),
        buildTipsWidget(),
      ],),
    );
  }

  List<String> imageList =[
    "assets/images/pic1.jpeg",
    "assets/images/pic2.jpeg",
    "assets/images/pic3.jpeg",
    "assets/images/pic4.jpeg",
  ];

  int currentIndex = 0;

  buildBannerWidget() {
    return PageView.builder(
      itemBuilder: (BuildContext context, int index) {
        return buildPageViewItemWidget(index);
      },
      controller: _pageController,
      itemCount: imageList.length * 10000,
      onPageChanged: (int index){
        setState(() {
          currentIndex = index;
        });
      },
    );
  }

  buildTipsWidget(){
    return Positioned(
        bottom: 20,right: 20,
        child:Container(
          padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text("${currentIndex%imageList.length+1}/${imageList.length}"),
    ));
  }

  buildPageViewItemWidget(int index) {
    return Image.asset(imageList[index%imageList.length],fit: BoxFit.fill,);
  }
}
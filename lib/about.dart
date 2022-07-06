import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent

        ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top:60),
              child:ShaderMask(
                shaderCallback: (rect){
                  return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black ,Colors.transparent]).createShader(Rect.fromLTRB(0, 0,rect.width, rect.height ));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/img2.png',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 15, top: 450),
              alignment: Alignment.center,
              // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.55 ,right: MediaQuery.of(context).size.height+0.2 , left: MediaQuery.of(context).size.height+0.2 ),
              child: Column(
                children: [
                  Text('Hello, I am', style:TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Debjit Purohit', style:TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),),
                  SizedBox(
                    height: 20,
                  ),
                  Text('I am Quick Learner with the Ability to Multi-task.Thrives in environment that constatly embrace new technologies.💻', style:TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 120,
                  child:TextButton(
                    onPressed:(){},
                    child: Text('Hire Me'),
                    style: TextButton.styleFrom(backgroundColor: Colors.white,
                        primary: Colors.black),)
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    IconButton(onPressed: (){}, icon: Icon(
                      FontAwesomeIcons.instagram,color: Colors.white,
                    )),
                    IconButton(onPressed: (){}, icon: Icon(
                      FontAwesomeIcons.facebook,color: Colors.white,
                    )),
                    IconButton(onPressed: (){}, icon: Icon(
                      FontAwesomeIcons.linkedin,color: Colors.white,
                    )),
                    IconButton(onPressed: (){}, icon: Icon(
                      FontAwesomeIcons.envelope,color: Colors.white,
                    )),
                    IconButton(onPressed: (){}, icon: Icon(
                      FontAwesomeIcons.whatsapp,color: Colors.white,
                    )),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.github,color: Colors.white,
                      )),
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

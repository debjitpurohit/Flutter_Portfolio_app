import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:animated_text_kit/animated_text_kit.dart';




class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {


  myAchiv(num, type){
    return  Row(
      children: [
        Text(num,style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold)),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )

      ],
    );
  }

  mySpec(icon, text){
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  icon,
                  color:Colors.blueAccent,
                size: 50,
              ),
              SizedBox(
                height:10 ,
              ),
              Text(text,style: TextStyle(
                  color: Colors.white,fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top:25),
                child:ShaderMask(
                  shaderCallback: (rect){
                    return LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black ,Colors.transparent]).createShader(Rect.fromLTRB(0, 0,rect.width, rect.height ));
                  },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset('assets/img.png',
                    height: 400,
                    fit: BoxFit.contain,
                    ),
                ),
              ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.49),
              child: Column(
                children: [Text('Debjit Purohit', style:TextStyle(
                    color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
                  SizedBox(
                    height: 7,
                  ),
                  AnimatedTextKit(
                      animatedTexts:[
                        TypewriterAnimatedText('Web Developer',textStyle:TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                          speed: Duration(milliseconds: 200)
                        ),
                        TypewriterAnimatedText('Android Developer',textStyle:TextStyle(color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                            speed: Duration(milliseconds: 200)),
                        TypewriterAnimatedText('Competitive Programmer ',textStyle:TextStyle(color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                            speed: Duration(milliseconds: 200)),

                      ],
                    totalRepeatCount: 100)
                ],
              ),
            )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin:EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 650,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiv('31', ' Projects'),
                    myAchiv('25', ' Skills'),
                    myAchiv('10', ' Experiences'), 
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Specialized In_', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpec(FontAwesomeIcons.android, 'Android'),
                            mySpec(FontAwesomeIcons.linux, 'LinuxOS'),
                            mySpec(FontAwesomeIcons.python, 'Python'),

                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpec(FontAwesomeIcons.html5 , 'HTML'),
                            mySpec(FontAwesomeIcons.css3, 'CSS'),
                            mySpec(FontAwesomeIcons.js, 'JavaScript'),

                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpec(FontAwesomeIcons.react , 'ReactJs'),
                            mySpec(FontAwesomeIcons.bootstrap, 'Bootstrap'),
                            mySpec(FontAwesomeIcons.github , 'Github'),

                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpec(FontAwesomeIcons.git, 'Git'),
                            mySpec(FontAwesomeIcons.node, 'NodeJs'),
                            mySpec(FontAwesomeIcons.database, 'MongoDB'),

                          ],
                        )

                      ],
                  )

              ],
            ),
          );
        },
      ),
    );
  }
}

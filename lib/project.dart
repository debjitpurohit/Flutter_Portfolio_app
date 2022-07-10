import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  myPro(lang, title, desc, star,link){
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20,top:30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(lang,style:TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
              SizedBox(
                height: 20,
              ),
              Text(title,style:TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 10,
              ),
              Text(desc,style:TextStyle(
                color: Colors.white70,
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.white,
                    size: 18,),
                  Text(star, style: TextStyle(
                    color: Colors.white60,
                  ),),
                  Expanded(child: Container()),
            IconButton(onPressed: () {
              launch(link);

            }, icon: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white60,
                  ) )
                ],
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
      appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text('Projects' ,style:TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),),
    ),
     body: SingleChildScrollView(
       child: Container(
         alignment: Alignment.center,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             myPro('FLUTTER', "Debjit's Portolio App", 'Portfolio app for me made by flutter', '10','https://github.com/debjitpurohit/Flutter_Portfolio_app'),
             myPro("HTML5 CSS3 JS", "Debjit's Website ", 'portfolio websites made by frontend', '9','https://github.com/debjitpurohit/Debjits-World'),
             myPro('PYTHON', "Debjit's Alexa", 'Alexa by python', '10','https://github.com/debjitpurohit/Debjit-s-Alexa'),
             myPro('PYTHON', "Calculator", 'Calculator by python', '8','https://github.com/debjitpurohit/PYTHON-Calculator'),
             myPro('HTML5 CSS3 JS', "Windows 11 clone", 'cloning windows 11', '10','https://github.com/debjitpurohit/Windows-11-clone'),
             myPro('PYTHON', "Digital Clock", 'Digital clock by python', '9','https://github.com/debjitpurohit/python-Digital-Clock'),
             myPro('PYTHON', "Whatsapp Bot", 'Random whatsapp messege sender', '7','https://github.com/debjitpurohit/whatsapp_Bot'),
             myPro('HTML5 CSS3 JS', "JS Clock", 'digital clock by JS', '8','https://github.com/debjitpurohit/JAVA-SCRIPT-Clock'),
             myPro('HTML5 CSS3 JS', "FLIPKART clone", 'cloning Flipkart', '10','https://github.com/debjitpurohit/ecommerce-flipkart-clone'),
             myPro('KOTLIN', "Meme Share App", "meme share app by kotlin", '9', 'https://github.com/debjitpurohit/MEME-SHARE-APP'),
             myPro('HTML5 CSS3 ', "Fitness Website", 'Gym website', '6','https://github.com/debjitpurohit/Fitness-website'),
             myPro('HTML5 CSS3 ', "Transparent Website", 'Transparent website', '7','https://github.com/debjitpurohit/Transparent-Kolkata'),





           ],
         ),
       ),
     ),
    );
  }
}


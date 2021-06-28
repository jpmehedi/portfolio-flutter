
import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 472,
      child: Container(
        margin: EdgeInsets.only(top: 80, bottom: 80),
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Card(
          elevation: 10,
          shadowColor: Colors.grey,
          child: Row(
            children: [
              Expanded(
                 child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("About", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),),
                      SizedBox(height: 16,),
                      Text(about, style: TextStyle(height: 1.6,fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff2c2c2c)), textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 30,),
              Expanded(
                child: Container(                 
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Basic Information:", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text("Age:".toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          ),
                          SizedBox(width: 50,),
                          Expanded(
                            flex: 8,
                            child: Text("27", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: textColor)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text("Email:".toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          ),
                          SizedBox(width: 50,),
                          Expanded(
                flex: 8,
                            child: Text("mehedihasaninform@gmail.com", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: textColor)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text("Phone:".toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          ),
                          SizedBox(width: 50,),
                          Expanded(
                              flex: 8,
                            child: Text("+8801 790 180 825", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: textColor)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text("Address:".toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          ),
                          SizedBox(width: 50,),
                          Expanded(
                            flex: 8,
                            child: Text("31/10, Block-C, Mirpur -12, Dhaka- 1216",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: textColor)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text("Language:".toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                          ),
                          SizedBox(width: 50,),
                          Expanded(
                                 flex: 8,
                            child: Text("English, Japaness, Bangla", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: textColor)),
                          )
                        ],
                      ),
                      SizedBox(height: 28,),
                    ],
                  ),
                ),
              
              ),
            ],
          ),
        ),
      ),
    );
  }
}



String about = 
"""
I’m Mehedi Hasan. I passionate about Cross-platform Mobile application development (Flutter). I have 1.5 year experience in flutter development. I’m constantly striving to learn new things and improve. I follow industry news; regularly tinker with new technologies, and read books and blogs to keep my skills current. I am completed graduation in Computer Science & Engineering. I have great skills in Flutter, Dart, HTML, CSS, Bootstrap framework, and also have expertise in Word Press.I have a keen knowledge of Firebase, SQLite database management system. I am also has great experience in UX/UI designing Mobile Application

""";
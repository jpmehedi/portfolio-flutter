import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

import 'package:portfolio/constant/color.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ScrollController _scrollController = new ScrollController();

  bodeScrollControll (double height) {
    _scrollController.animateTo(
      //_scrollController.position.minScrollExtent,
      height,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
  @override
  void initState() {
     _scrollController.addListener(() => setState(() {
       _scrollListener();
     }));
    super.initState();
  }

    @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  static const facebookURL = "https://www.facebook.com/vipmehedi/";
   static const linkedinURL = "https://www.linkedin.com/in/jpmehedi/";
    static const githubURL = "https://www.github.com/jpmehedi/";
     static const youtubeURL = "https://www.youtube.com/jpmehedi/";

  Future launchURL(url) async{

    if (await canLaunch(url))
      await launch(url);
    else 
    // can't launch url, there is some error
    throw "Could not launch $url";

  }



  double expandedHight = 570.0;
  double res;
  double get top {
    res = expandedHight;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      if (offset < (res - kToolbarHeight)) {
        setState(() {
          res -= offset;
        });
      } else {
        setState(() {
           res = kToolbarHeight;
        });
      }
    }
    return res;
  }

  var values = 0.0;
  _scrollListener() {
     if(_scrollController.position.pixels <= _scrollController.position.maxScrollExtent){
       setState(() {
         values = _scrollController.position.pixels; 
       });
    }
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Stack(
            children: [
              CustomScrollView(
                controller: _scrollController,
                
                slivers: <Widget>[                 
                  SliverAppBar(  
                    backwardsCompatibility: true,   
                    leading: Container(
                      padding: EdgeInsets.all(20),
                      child: Text("Resume of".toUpperCase()),        
                    ), 
                    
                    actions: [
                      InkWell(
                        onTap: () {
                          bodeScrollControll(550);
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text("About".toUpperCase()),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          bodeScrollControll(1000);
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text("Skills".toUpperCase()),
                        ),
                      ),    
                      InkWell(
                        onTap: () {
                          bodeScrollControll(1400);
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text("Portfolio".toUpperCase()),
                        ),
                      ),    
                      InkWell(
                        onTap: () {
                          bodeScrollControll(1800);
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text("Exprience".toUpperCase()),
                        ),
                      ),   
                      InkWell(
                        onTap: () {
                          bodeScrollControll(2200);
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text("Blog".toUpperCase()),
                        ),
                      ),  
                      InkWell(
                        onTap: () {
                          bodeScrollControll(2600);
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text("Contact".toUpperCase()),
                        ),
                      ), 
                    ],
                    leadingWidth: 200,
                    expandedHeight: 600.0,
                    floating: true,
                    pinned: true,
                    snap: true,
                    elevation: 50,
                    backgroundColor: Colors.teal,  
                    flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                          padding: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                                image:  DecorationImage(
                              image:  NetworkImage('https://static.vecteezy.com/system/resources/previews/000/523/561/non_2x/mobile-application-development-on-laptop-screen-concept-background-app-coding-and-web-development-cross-platform-devices-smartphone-tablet-and-computer-vector.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 100,),
                              AvatarGlow(
                                glowColor: Colors.green,
                                endRadius: 90.0,
                                duration: Duration(milliseconds: 2000),
                                repeat: true,
                                showTwoGlows: true,
                                repeatPauseDuration: Duration(milliseconds: 100),
                                child: Material(
                                  //cselevation: 8.0,
                                  shape: CircleBorder(),
                                  child: ClipOval(
                                    child: Image.network(
                                    "https://pbs.twimg.com/profile_images/1089761028886298626/ueQWp3pw.jpg",
                                    width: 120,
                                     height: 120,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 24,),
                              Text(
                                "Md Mehedi Hasan".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                "Flutter Developer || Web Developer || UX/UI Expart".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MaterialButton(
                                      height: 48,  
                                      minWidth: 150,                       
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        side: BorderSide(color: Colors.purple)),
                                      onPressed: () {},
                                      color: Colors.purple,
                                      textColor: Colors.white,
                                      child: Text("Hire me".toUpperCase(),
                                        style: TextStyle(fontSize: 14)),
                                    ),
                                    SizedBox(width: 12,),
                                    MaterialButton(
                                      height: 48,  
                                      minWidth: 150,                          
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        side: BorderSide(color: Colors.purple)),
                                      onPressed: () {},
                                      color: Colors.purple,
                                      textColor: Colors.white,
                                      child: Text("Download CV".toUpperCase(),
                                        style: TextStyle(fontSize: 14)),
                                    ),
  
                                  ],
                                )   ,
                              )
                            ],
                          ),
                        ),                  
                    ),
                  ),

                  //Body section 
                  Container(
                    child: SliverList(
                      delegate:  SliverChildListDelegate(_buildList)
                    ),
                  ),
                ],
              ),


             values <= 500 || values == null? Positioned(
                top: top,
                width: MediaQuery.of(context).size.width,
                child: Align(
                  // ignore: deprecated_member_use
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                             onPressed: () async{
                             await launchURL(facebookURL);
                            },
                            color: Colors.deepOrange,  
                            textColor: Colors.white,
                            shape: CircleBorder(side: BorderSide.none),
                            child: Icon(Icons.web)
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                          width: 60,
                          height: 60,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                             onPressed: () async{
                             await launchURL(linkedinURL);
                            },
                            color: Colors.deepOrange,  
                            textColor: Colors.white,
                            shape: CircleBorder(side: BorderSide.none),
                            child: Icon(Icons.web)
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                          width: 60,
                          height: 60,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            onPressed: () async{
                             await launchURL(githubURL);
                            },
                            color: Colors.deepOrange,  
                            textColor: Colors.white,
                            shape: CircleBorder(side: BorderSide.none),
                            child: Icon(Icons.web)
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                          width: 60,
                          height: 60,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            onPressed: () async{
                             await launchURL(youtubeURL);
                            },
                            color: Colors.deepOrange,  
                            textColor: Colors.white,
                            shape: CircleBorder(side: BorderSide.none),
                            child: Icon(Icons.web)
                            ),
                          ),
                    ],
                  ),
                    )
              ) : Container(height: 0),
            ],
          ),
      );
    }

    List<Widget> _buildList = [
      Container(
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
                        Text(
                          """
I’m Mehedi Hasan. I passionate about Cross-platform Mobile application development (Flutter). I have 1.5 year experience in flutter development. I’m constantly striving to learn new things and improve. I follow industry news; regularly tinker with new technologies, and read books and blogs to keep my skills current. I am completed graduation in Computer Science & Engineering. I have great skills in Flutter, Dart, HTML, CSS, Bootstrap framework, and also have expertise in Word Press.I have a keen knowledge of Firebase, SQLite database management system. I am also has great experience in UX/UI designing Mobile Application
                          """,style: TextStyle(height: 1.6,fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff2c2c2c)), textAlign: TextAlign.justify,
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
      ),
      Container(
        color: Colors.teal,
        height: 768,
      ),
      Container(
        color: Colors.yellow,
        height: 768,
      ),
      Container(
        color: Colors.red,
        height: 768,
      ),
      Container(
        color: Colors.purple,
        height: 768,
      ),
      Container(
        color: Colors.pink,
        height: 768,
      ),
    ];
}

  class MyDynamicHeader extends SliverPersistentHeaderDelegate {
  int index = 0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
        builder: (context, constraints) {
          final Color color = Colors.primaries[index];
          final double percentage = (constraints.maxHeight - minExtent)/(maxExtent - minExtent);

          if (++index > Colors.primaries.length-1)
            index = 0;

          return Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 4.0, color: Colors.black45)],
                gradient: LinearGradient(
                    colors: [Colors.blue, color]
                )
            ),
            height: constraints.maxHeight,
            child: SafeArea(
                child: Center(
                  child: CircularProgressIndicator(
                    value: percentage,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
            ),
          );
        }
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;

  @override
  double get maxExtent => 250.0;

  @override
  double get minExtent => 80.0;
}
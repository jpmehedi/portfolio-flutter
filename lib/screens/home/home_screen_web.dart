import 'package:flutter/material.dart';
import 'package:portfolio/constant/url.dart';
import 'package:portfolio/screens/header/header.dart';
import 'package:portfolio/screens/home/data.dart';
import 'package:portfolio/screens/home/functions.dart';
import 'package:portfolio/utils/functions.dart';
import 'package:portfolio/widgets/nav_button.dart';
import 'package:portfolio/widgets/social_button.dart';


class HomeScreenWeb extends StatefulWidget {
  @override
  _HomeScreenWebState createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeScreenWeb> {


    @override
    void initState() {
      scrollController.addListener(() => setState(() { _scrollListener();}));
      super.initState();
    }
    var values = 0.0;
    _scrollListener() {
      if(scrollController.position.pixels <= scrollController.position.maxScrollExtent){
        setState(() {
          values = scrollController.position.pixels; 
        });
      }
    }
    double get top {
      res = expandedHight;
      if (scrollController.hasClients) {
        double offset = scrollController.offset;
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

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Stack(
            children: [
              CustomScrollView(
                controller: scrollController,            
                slivers: <Widget>[                 
                  SliverAppBar(  
                    backwardsCompatibility: true,   
                    leading: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      margin: EdgeInsets.only(left: 100),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: (){
                            goToTop(0.0);
                          },
                          child: Text("Resume of".toUpperCase()),
                        ),
                      ),        
                    ), 
                    
                    //Navigation bar section
                    actions: [
                      for(int i = 0; i < navBarButtonText.length; i++)
                      NavButton(
                        onTap: (){
                          scrollControl(globalKeys[i]);
                        },
                        buttonText: navBarButtonText[i],
                      ),
                      NavButton(
                        onTap: ()async {
                          await launchURL(URL.blogURL);
                        },
                        buttonText: "Blog",
                      ), 
                      NavButton(
                        onTap: ()async {
                          await launchURL(URL.youtubeURL);
                        },
                        buttonText: "Youtube",
                      ),
                      SizedBox(width: 80,)

                    ],


                    leadingWidth: 200,
                    expandedHeight: 600.0,
                    floating: true,
                    pinned: true,
                    snap: true,
                    elevation: 50,
                    backgroundColor: Colors.teal,
                      
                    //StickyHeader Section
                    flexibleSpace: FlexibleSpaceBar(
                      background: StickyHeader(),                  
                    ),
                  ),

                  //Body and Footer Section
                  Container(
                    child: SliverList(
                    delegate: new SliverChildListDelegate([pages()]),
          
                   ),
                  ),

                ],
              ),

             //Social button section
             values <= 500 || values == null? Positioned(
                top: top,
                width: MediaQuery.of(context).size.width,
                child: Align(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for(int i = 0; i < socialURL.length; i++)
                      SocialButton(
                        onPressed: ()async {
                          await launchURL(socialURL[i]);
                        },
                        icon: socialIcon[i],
                      ),
                    ],
                  ),
                )
              ) : Container(height: 0),
            ],
          ),
      );
    }
    
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}



import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/utils/functions.dart';
import 'package:portfolio/widgets/portfolio_image.dart';

enum ExprienceCatogory{
 andriod,
 web,
 ios,
 package 
}
class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  var projectShowCase = ExprienceCatogory.andriod;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
            padding: EdgeInsets.only(top: 36),
            width: MediaQuery.of(context).size.width,
            color: defaultWhite,
            child: Center(child: Text("Portfolio", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
          ),  
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [          
              for(int i = 0; i < ExprienceCatogory.values.length; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    color: Colors.blue,
                    hoverColor: Colors.black54,
                    highlightColor: Colors.red,
                    tooltip: toltip[i],
                    splashRadius: 24,
                      onPressed: (){
                        setState(() {                        
                          projectShowCase = ExprienceCatogory.values[i];
                        });
                      }, 
                      icon: Icon(icons[i])    
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: _status(projectShowCase),
          )
        ],
      ),
    );
  }
}

List<String> toltip = <String>[
  "Andriod",
  "Web",
  "iOS",
  "Package"
];

List selectedColor = [
  Colors.black54,
  Colors.black54,
  Colors.black54,
  Colors.black54,
];

List<IconData> icons = <IconData>[
  FontAwesomeIcons.android,
  FontAwesomeIcons.globe,
  FontAwesomeIcons.apple,
  FontAwesomeIcons.page4
];

Widget _status(projectShowCase) {
  if (projectShowCase == ExprienceCatogory.andriod) {
    return ProjectShowCase(
      data: androidProtfolio,
    );
  } else if(projectShowCase == ExprienceCatogory.web) {
    return ProjectShowCase(
      data: webProtfolio,
    );
  }else if(projectShowCase == ExprienceCatogory.ios) {
    return ProjectShowCase(
      data: iosProtfolio,
    );
  }else if(projectShowCase == ExprienceCatogory.package) {
    return ProjectShowCase(
      data: packageProtfolio,
    );
  }else {
    return Text("Somthing missing");
  }
}

class ProjectShowCase extends StatefulWidget {
  final data;
  const ProjectShowCase({ 
    Key key , this.data
  }) : super(key: key);

  @override
  _ProjectShowCaseState createState() => _ProjectShowCaseState();
}

class _ProjectShowCaseState extends State<ProjectShowCase> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width / 2.5;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100),
      width: MediaQuery.of(context).size.width,
      height: size * 2 - 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               PortfolioImage(
                 imagePath: widget.data[0]["imagePath"],
                 title: widget.data[0]["title"],
                 subtitle: widget.data[0]["subtitle"],
                 onTap:()=> launchURL(widget.data[0]["liveUrl"]),
               ),
               PortfolioImage(
                 imagePath: widget.data[1]["imagePath"],
                 title: widget.data[1]["title"],
                 subtitle: widget.data[1]["subtitle"],
                 onTap:()=> launchURL(widget.data[1]["liveUrl"]),
               ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PortfolioImage(
                  imagePath: widget.data[2]["imagePath"],
                  title: widget.data[2]["title"],
                  subtitle: widget.data[2]["subtitle"],
                  onTap:()=> launchURL(widget.data[2]["liveUrl"]),
                ),
                PortfolioImage(
                  imagePath: widget.data[3]["imagePath"],
                  title: widget.data[3]["title"],
                  subtitle: widget.data[3]["subtitle"],
                  onTap:()=> launchURL(widget.data[3]["liveUrl"]),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}


List<Map<String, String>> androidProtfolio = [

{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/pharmacy.png",
  "title": "Subidha Pharmacy",
  "subtitle": "E-commerce mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.subidhabd.pharmacy"
},
{
  "imagePath": "assets/project/subidha.png",
  "title": "Subidha",
  "subtitle": "E-commerce mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.subidhabd.customerapp"
},
{
  "imagePath": "assets/project/greendhaka.png",
  "title": "Green Dhaka",
  "subtitle": "Onlline Nursery mobile application",
  "liveUrl": "https://github.com/jpmehedi/green-dhaka"
}

];

List<Map<String, String>> webProtfolio = [

{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
}

];
List<Map<String, String>> iosProtfolio = [

{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
}

];
List<Map<String, String>> packageProtfolio = [

{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
},
{
  "imagePath": "assets/project/clockdo.png",
  "title": "ClockDo",
  "subtitle": "Task management mobile application",
  "liveUrl": "https://play.google.com/store/apps/details?id=com.augnitive.todo"
}

];









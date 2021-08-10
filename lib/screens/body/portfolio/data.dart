
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/body/portfolio/component/project_showcase_android.dart';
import 'package:portfolio/screens/body/portfolio/component/project_showcase_web.dart';



enum ExprienceCatogory{
 andriod,
 web,
 ios,
 package 
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

Widget androidView(projectShowCase) {
  if (projectShowCase == ExprienceCatogory.andriod) {
    return ProjectShowCaseAndroid(
      data: androidProtfolio,
    );
  } else if(projectShowCase == ExprienceCatogory.web) {
    return ProjectShowCaseAndroid(
      data: webProtfolio,
    );
  }else if(projectShowCase == ExprienceCatogory.ios) {
    return ProjectShowCaseAndroid(
      data: iosProtfolio,
    );
  }else if(projectShowCase == ExprienceCatogory.package) {
    return ProjectShowCaseAndroid(
      data: packageProtfolio,
    );
  }else {
    return Text("Somthing missing");
  }
}
Widget webView(projectShowCase) {
  if (projectShowCase == ExprienceCatogory.andriod) {
    return ProjectShoaawCaseWeb(
      data: androidProtfolio,
    );
  } else if(projectShowCase == ExprienceCatogory.web) {
    return ProjectShoaawCaseWeb(
      data: webProtfolio,
    );
  }else if(projectShowCase == ExprienceCatogory.ios) {
    return ProjectShoaawCaseWeb(
      data: iosProtfolio,
    );
  }else if(projectShowCase == ExprienceCatogory.package) {
    return ProjectShoaawCaseWeb(
      data: packageProtfolio,
    );
  }else {
    return Text("Somthing missing");
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

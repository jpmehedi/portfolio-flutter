import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/color.dart';

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
    return ProjectShowCase();
  } else if(projectShowCase == ExprienceCatogory.web) {
    return Text('web');
  }else if(projectShowCase == ExprienceCatogory.ios) {
    return Text('ios');
  }else if(projectShowCase == ExprienceCatogory.package) {
    return Text('package');
  }else {
    return Text("Somthing missing");
  }
}

class ProjectShowCase extends StatelessWidget {
  const ProjectShowCase({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width / 2.5;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100),
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      height: size * 2 - 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: Container(
                    height: size - 200,
                    width: size,
                  ),
                ),
                Card(
                  child: Container(
                    height:size - 200,
                    width:size,
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: Container(
                    height:size - 200,
                    width: size,
                  )
                ),
                Card(
                  child: Container(
                    height: size - 200,
                    width: size,
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}

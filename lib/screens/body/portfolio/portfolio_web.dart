
import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/screens/body/portfolio/data.dart';


class PortfolioWebPage extends StatefulWidget {
  @override
  _PortfolioWebPageState createState() => _PortfolioWebPageState();
}

class _PortfolioWebPageState extends State<PortfolioWebPage> {
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
            child: webView(projectShowCase),
          )
        ],
      ),
    );
  }
}








import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';

class ExprienceCardBuilder extends StatelessWidget {
  final String duration;
  final String companyName;
  final String designation;
  final String responsibilty;
  const ExprienceCardBuilder({
    Key key,
    this.companyName, this.designation, this.duration, this.responsibilty
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Card(
          elevation: 10,
          shadowColor: Colors.grey,
          child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: defaultGreen,
                    height: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("$duration", textAlign: TextAlign.center, style: TextStyle( height: 1.5,color: defaultWhite, fontSize: 14, fontWeight: FontWeight.normal, fontFamily: 'arial'),),
                        SizedBox(height: 20,),
                        Text('$companyName',  textAlign: TextAlign.center, style: TextStyle(height: 1.5 ,color: defaultWhite, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial'))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                   height: 220,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("$designation",style: TextStyle(color: defaultBlack, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'arial')),
                        SizedBox(height: 20,),
                        Text(
                          "$responsibilty",
                          textAlign: TextAlign.justify,
                          style: TextStyle(height: 1.7),
                          
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

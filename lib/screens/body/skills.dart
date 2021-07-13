import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/widgets/skill_bar_builder.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width,
          color: defaultWhite,
          child: Center(child: Text("Professional Skills", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
        ),
        Container(
          color: Colors.white,
          height: 450,
          child: Container(
            margin: EdgeInsets.only(top: 80, bottom: 80),
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for(int i = 0; i < skillsName.length / 2; i++)
                            SkillBarBuilder(
                              skillName: skillsName[i],
                              progress: "80",
                              progressValue: 0.9,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for(int i = skillsName.length - 1 ; i >= skillsName.length / 2; i--)
                            SkillBarBuilder(
                              skillName: skillsName[i],
                              progress: "80",
                              progressValue: 0.9,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


List<String> skillsName = ["Dart", "Flutter", "HTML & CSS", "BOOTSTRAP", "WORDPRESS", "GOLANG & BEEGO" ];

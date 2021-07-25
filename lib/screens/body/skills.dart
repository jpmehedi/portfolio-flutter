import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/widgets/skill_bar_builder.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: defaultWhite,
          child: Center(child: Text("Professional Skills", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
        ),
        Container(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.only(top: 20, bottom: 80),
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
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
                              progress: progress[i],
                              progressValue: double.parse(progress[i]) / 100,
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
                              progress: progress[i],
                              progressValue: double.parse(progress[i]) / 100,
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

List<String> progress = <String>["90", "95", "80", "75", "65", "50","70", "85"];

List<String> skillsName = <String>["Dart", "Flutter", "HTML & CSS", "JavaScript", "MongoDB | FireBase | SqLite | MySql", "WORDPRESS", "GOLANG", "NodeJS | ExpressJs"];

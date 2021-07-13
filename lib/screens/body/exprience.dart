import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/widgets/exprience_card_builder.dart';

class ExpriencePage extends StatelessWidget {
  const ExpriencePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 40, bottom: 100),
          width: MediaQuery.of(context).size.width,
          color: defaultWhite,
          child: Center(child: Text("Work Experience", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
        ),
        ExprienceCardBuilder(
          duration: "15 MARCH , 2021 TO PRESENT",
          companyName: "AUGNITIVE",
          designation: 'Software Engineer',
          responsibilty: augnitiveResponsibility,
        ),
        SizedBox(height: 20 ,),
        ExprienceCardBuilder(
          duration: "06 OCTOBER, 2020 TO PRESENT",
          companyName: "VTCBANGLA",
          designation: 'Trainer of Mobile App Dvelopment (Flutter)',
          responsibilty: vtcBanglaResponsibility,
        ),
        SizedBox(height: 20 ,),
        ExprienceCardBuilder(
          duration: "15 JANUARY, 2020 TO 15 SEPTEMBER, 2020T",
          companyName: "CODE-STUDIO",
          designation: 'Flutter Developer',
          responsibilty: codeStudioResponsibility,
        ),
       SizedBox(height: 20 ,),
      ],
    );
  }
}


final String augnitiveResponsibility = "Job Responsibility : Write Code in Dart, Work with Product Managers and Designers for design and specification of our product, Collaborate with iOS and Android engineers to develop new features on our product, Collaborate with ML and Data Engineers to develop and bring to production new features on out product, Solve complex performance problems and architectural challenges, Design, develop, test, deploy, maintain, and improve software for our product, Write and maintain technical documentation, Manage own project requirements, deadlines and qualities, Collaborate with QA Engineers to test and deliver the feature with high-quality and high-speed.";
final String vtcBanglaResponsibility = "Job Responsibility : Develops and executes training plans, training materials, and classes, schedules classes into facilities, and provides software instruction to the students. They also review results and trainee feedback to improve materials and classes, as well as identify and develop additional software training opportunities.";
final String codeStudioResponsibility = "Job Responsibility : Write Code in Dart, Work with Product Managers and Designers for design and specification of our product, Collaborate with iOS and Android engineers to develop new features on our product, Solve complex performance problems and architectural challenges, Design, develop, test, deploy, maintain, and improve software for our product, Write and maintain technical documentation, Manage own project requirements, deadlines and qualities, Collaborate with QA Engineers to test and deliver the feature with high-quality and high-speed.";
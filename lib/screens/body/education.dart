import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/widgets/education_card_builder.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 36, bottom: 72),
          width: MediaQuery.of(context).size.width,
          color: defaultWhite,
          child: Center(child: Text("Education", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
        ),
        EducationCardBuilder(
          duration: "2017 - 2020",
          courseName: "Bachelor's Degree",
          courseTitle: "Computer Science & Engineering",
          institutionName: "DHAKA INTERNATIONAL UNIVERSITY",
          gpa: "CGPA - 3.72 out of 4",
          activitiesTitle: "Activities and Society:",
          activitiesDescription: "DIU ENGLISH LANGUAGE CLUB, TEAM WORK ICPC, EXECUTIVE MEMBER DIU CPC",
        ),
        SizedBox(height: 20 ,),
        EducationCardBuilder(
          duration: "2011 - 2015",
          courseName: "Diploma's Degree",
          courseTitle: "Civil Engineering",
          institutionName: "CHANDPUR POLYTECHNIC INSTITUTE",
          gpa: "CGPA - 3.82 out of 4",
          activitiesTitle: "Activities and Society:",
          activitiesDescription: "CPI ENGLISH LANGUAGE CLUB, CLASS REPRESENTATIVE(CR)",
        ),
        SizedBox(height: 20 ,),
        EducationCardBuilder(
          duration: "2009 - 2011",
          courseName: "High School",
          courseTitle: "Science and Mathematics",
          institutionName: "KACHUA GOVT. PILOT HIGH SCHOOL",
          gpa: "GPA - 4.19 out of 5",
          activitiesTitle: "Activities and Society:",
          activitiesDescription: "CPI ENGLISH LANGUAGE CLUB, CLASS REPRESENTATIVE (CR)",
        ),
       SizedBox(height: 20 ,),
      ],
    );
  }
}


final String augnitiveResponsibility = "Job Responsibility : Write Code in Dart, Work with Product Managers and Designers for design and specification of our product, Collaborate with iOS and Android engineers to develop new features on our product, Collaborate with ML and Data Engineers to develop and bring to production new features on out product, Solve complex performance problems and architectural challenges, Design, develop, test, deploy, maintain, and improve software for our product, Write and maintain technical documentation, Manage own project requirements, deadlines and qualities, Collaborate with QA Engineers to test and deliver the feature with high-quality and high-speed.";
final String vtcBanglaResponsibility = "Job Responsibility : Develops and executes training plans, training materials, and classes, schedules classes into facilities, and provides software instruction to the students. They also review results and trainee feedback to improve materials and classes, as well as identify and develop additional software training opportunities.";
final String codeStudioResponsibility = "Job Responsibility : Write Code in Dart, Work with Product Managers and Designers for design and specification of our product, Collaborate with iOS and Android engineers to develop new features on our product, Solve complex performance problems and architectural challenges, Design, develop, test, deploy, maintain, and improve software for our product, Write and maintain technical documentation, Manage own project requirements, deadlines and qualities, Collaborate with QA Engineers to test and deliver the feature with high-quality and high-speed.";
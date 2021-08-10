import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';
import 'package:portfolio/widgets/education_card_builder.dart';

class EducationMobilePage extends StatelessWidget {
  const EducationMobilePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 36, bottom: 50),
          width: MediaQuery.of(context).size.width,
          color: defaultWhite,
          child: Center(child: Text("Education", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
        ),
        EducationCardBuilder(
          isMobile: true,
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
          isMobile: true,
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
          isMobile: true,
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



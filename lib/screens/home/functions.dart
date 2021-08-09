import 'package:flutter/material.dart';
import 'package:portfolio/screens/body/about/about_layout.dart';
import 'package:portfolio/screens/body/contact/contact_layout.dart';
import 'package:portfolio/screens/body/education.dart';
import 'package:portfolio/screens/body/exprience.dart';
import 'package:portfolio/screens/body/portfolio.dart';
import 'package:portfolio/screens/body/reference/reference_layout.dart';
import 'package:portfolio/screens/body/skills/skill_layout.dart';
import 'package:portfolio/screens/footer/footer.dart';
import 'package:portfolio/screens/home/data.dart';

ScrollController scrollController = new ScrollController();

Column pages() {
  return Column(
  children: [
    Container(child: AboutLayout(), key: aboutKeys),
    Container(child: SkillsLayout(), key: skillsKeys),
    Container(child: PortfolioPage(), key: portFolioKeys),
    Container(child: ExpriencePage(), key: exprienceKeys),
    Container(child: EducationPage()),
    Container(child: ReferenceLayout()),
    Container(child: ContactLayout(), key: contactKeys,),
    Container(child: FooterPage())
  ],
  );
}

Future scrollControl (keys)async{
  final context = keys.currentContext;
  await Scrollable.ensureVisible(
  context, 
  duration: Duration(milliseconds: 1000), 
  curve: Curves.fastOutSlowIn,
  );
}

void goToTop (double height) {
  scrollController.animateTo(
    height,
    duration: Duration(seconds: 1),
    curve: Curves.fastOutSlowIn,
  );
}

  


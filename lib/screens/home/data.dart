
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/url.dart';
import 'package:portfolio/screens/body/about/about_layout.dart';
import 'package:portfolio/screens/body/contact.dart';
import 'package:portfolio/screens/body/education.dart';
import 'package:portfolio/screens/body/exprience.dart';
import 'package:portfolio/screens/body/portfolio.dart';
import 'package:portfolio/screens/body/reference.dart';
import 'package:portfolio/screens/body/skills/skill_layout.dart';
import 'package:portfolio/screens/footer/footer.dart';

List<Widget> pages = [
  AboutLayout(),
  SkillsLayout(),
  PortfolioPage(),
  ExpriencePage(),
  EducationPage(),
  ReferencePage(),
  ContactPage(),
  FooterPage()
];

List<String> socialURL = [
  URL.facebookURL, URL.linkedinURL, URL.githubURL, URL.stackoverflowURL
];

List<IconData> socialIcon = [
  FontAwesomeIcons.facebookF, FontAwesomeIcons.linkedinIn, FontAwesomeIcons.github, FontAwesomeIcons.stackOverflow
];

List<dynamic> bodyScrollControlHeight = [
  550, 980, 1500, 2600, 4800
];


List<String> navBarButtonText = [
  "About", "Skills", "Portfolio", "Experience", "Contact"
];
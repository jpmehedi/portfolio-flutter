
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/url.dart';



ScrollController scrollController = new ScrollController();

double expandedHight = 570.0;
double res = 0.0;

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

final aboutKeys = GlobalKey();
final skillsKeys = GlobalKey();
final contactKeys = GlobalKey();
final exprienceKeys = GlobalKey();
final portFolioKeys = GlobalKey();

List<GlobalKey> globalKeys = <GlobalKey>[
  aboutKeys, skillsKeys, portFolioKeys, exprienceKeys, contactKeys
];


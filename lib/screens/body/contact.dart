import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.teal,
      height: 580,
      child: Image.asset("assets/contact_bg.png", fit: BoxFit.cover,),
    );
  }
}
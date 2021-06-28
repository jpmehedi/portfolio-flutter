import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < 5; i++)
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(FontAwesomeIcons.github),
                )
              ],
            ),
          ),
          Container(
            child: Text('RESUME OF MD MEHEDI HASAN'),
          ),
          Container(
            child: Text("© Develped By Mehedi Hasan"),
          )
        ],
      ),
    );
  }
}
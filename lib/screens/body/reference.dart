import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';


class ReferencePage extends StatefulWidget {
  const ReferencePage({ Key key }) : super(key: key);

  @override
  _ReferencePageState createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 36),
            width: MediaQuery.of(context).size.width,
            color: defaultWhite,
            child: Center(child: Text("References", style: TextStyle(color: defaultBlack, fontSize: 28, fontWeight: FontWeight.bold),)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100, vertical: 40),
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Builder(
                    builder: (context) {
                      return CarouselSlider(
                      options: CarouselOptions(
                      height: 210,
                      initialPage: _current,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }
                    ),
                    items: recomendations.map((item) => Container(
                      padding: EdgeInsets.all(15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network("${item["recomender_picture"]}", width: 100,height: 100,),
                                    Text("${item["recomender_name"]}",style: TextStyle(height: 1.5, fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black87)),
                                    Text("${item["recomender_position"]}",style: TextStyle(height: 1.5, fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Expanded(
                              flex: 10,
                              child: Container(
                                child: Text("${item["recomendation"]}", style: TextStyle(height: 1.5, fontSize: 14, color: Colors.black45), textAlign: TextAlign.justify,),
                              ),
                            )
                          ],
                        )
                        ),
                      ).toList(),
                     );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: recomendations.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 48.0,
                          height: 4.0,
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: (Theme.of(context).brightness == Brightness.dark? Colors.white : Colors.black).withOpacity(_current == entry.key ? 0.9 : 0.4),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


final String recomendationOne = "I recommend to Mehedi Hasan for the position of software engineer at your business. Mehedi was a resident software engineer at my computing business for over 1 year, and his skills and knowledge were unparalleled. Along with that, however, he brought energy and dependability that made him crucial to our company. Ryan was tasked with finding software solutions and implementing workflow processes by assessing operational capability, troubleshooting and diagnostics, designing and calibrating system specifications, analyzing system processes, and other related duties. His overall duty was to streamline software processes and allow for efficient information flow and retrieval, and he did an excellent job in managing and improving our systems consistently.";
final String recomendationTwo = "I am pleased to write a letter of recommendation for Mehedi Hasan. He has excellent computer programming, communication, writing, speaking, and presentation skills. I believe He can be an excellent Software Engineer one day. I have known Mehedi Hasan since 4 years. He was a student of CSE in my college. It would be beneficial for any organization to hire Mehedi Hasan as a Software Developer. I highly recommend her services.";

List<Map<String, String>> recomendations = <Map<String, String>>[
  {
    "recomender_picture": "assets/images/abu_sufian.jpg",
    "recomender_name": "Abu Sufian",
    "recomender_position": 'SYSTEM ENGINNER MATCHA JAPAN',
    "recomendation": recomendationOne
  },
  
  {
    "recomender_picture": "assets/images/atm_mahabub_sir.jpg",
    "recomender_name": "A.T.M Mahabubur Rahaman",
    "recomender_position": "DEAN DEPT. OF CSE at DIU",
    "recomendation": recomendationTwo
  },

];
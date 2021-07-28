import 'package:flutter/material.dart';


class PortfolioImage extends StatefulWidget {

  final String imagePath;
  final String title;
  final String subtitle;
  final Function onTap;

  const PortfolioImage({
    @required this.imagePath, 
    this.title, 
    this.subtitle,
    @required this.onTap,
  });

  @override
  _PortfolioImageState createState() => _PortfolioImageState();
}

class _PortfolioImageState extends State<PortfolioImage> {

  bool isHover = false;
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0,0);

  void _onHover(value) {
    print(value);
    if(value){
      setState((){
        elevation = 4.0; 
        scale = 0.9;
        isHover = true;
        translate = Offset(0,0);
      });
    }else{
      setState((){
        elevation = 20.0;     
        scale = 1.0;
        isHover = false;
        translate = Offset(8,8);
      });
    }
  }
  @override
  Widget build(context) {
    var size = MediaQuery.of(context).size.width / 2.5;
    return Container(
      height:size - 200,
      width: size,
      child: InkWell(      
          onTap: widget.onTap,
          onHover: _onHover,
          hoverColor: Colors.teal,
          child: Stack(
            children: [  
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              padding: EdgeInsets.all(isHover ? 15 : 0),
              child: Image.asset("${widget.imagePath}", fit: BoxFit.cover, width: size, height: size - 200,),
            ),

            isHover ? AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
              height: size - 200,
              width:  size,
              margin: EdgeInsets.all(isHover ? 15 : 0),
              color: Colors.black54 .withOpacity(0.50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${widget.title}", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  Text("${widget.subtitle}", style:TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500))
                ],
              ),
            ) : Container(height: 0,width: 0),
          ],
        ),
      ),
    );
  }
}


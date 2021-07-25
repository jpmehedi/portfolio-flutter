import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return  Stack(
      children: [
        Container(
          color: Colors.teal,
          height: MediaQuery.of(context).size.height / 2 * 1.6,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/contact_bg.png", fit: BoxFit.cover,),
        ),
        Positioned(
          top: 60,
          bottom: 60,
          left: width / 4 + 50,
          right: width / 4 + 50,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.0),
              boxShadow:[
                 BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ] 
            ),

            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Contact Me", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: width / 4 - 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Feel free to contact me",  style: TextStyle(height: 1.6,fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xff2c2c2c))),
                                  CustomFromField(width: width),
                                  CustomFromField(width: width),
                                  CustomFromField(width: width),
                                  Container(
                                    width: width / 4 - 100,
                                    height: 40,
                                    child: TextFormField(
                                      minLines: 6, // any number you need (It works as the rows for the textarea)
                                      keyboardType: TextInputType.multiline,
                                      maxLines: null,
                                      decoration: InputDecoration(
                                        hintText: "Write your massage...."
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: 40,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.teal),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4),
                                          )
                                        )
                                      ),
                                      onPressed: (){}, 
                                      child: Text("Send"),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 80),
                          Expanded(
                            child: Container(
                              height: width / 4 - 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AddressTileBuilder(
                                    lebel: 'Address',
                                    data: "31/10, Block-C, Mirpur -12, Dhaka- 1216",
                                  ),
                                  AddressTileBuilder(
                                    lebel: "Phone",
                                    data: "+880 1790 180 825",
                                  ),
                                  AddressTileBuilder(
                                    lebel: "Email",
                                    data: "mehedihasaninform@gmail.com",
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomFromField extends StatelessWidget {
  const CustomFromField({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 4 - 100,
      height: 40,
      child: TextFormField(
          decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: "Name",
          contentPadding: EdgeInsets.only(top: 10),
          prefixIcon: Icon(Icons.home, size: 18,),
      ),
     ),
    );
  }
}

class AddressTileBuilder extends StatelessWidget {
  final String lebel;
  final String data;
  const AddressTileBuilder({
    Key key, this.lebel, this.data
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         SelectableText("$lebel", style: TextStyle(height: 1.6,fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xff2c2c2c))),
         SelectableText("$data",  style: TextStyle(height: 1.6,fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff2c2c2c))),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';


class Confirmation extends StatefulWidget{
  @override 
  _Confirmation createState()=>_Confirmation();
}
class _Confirmation extends State<Confirmation>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
//          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: Color.fromRGBO(12, 31, 52, 1),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          child:  Column(

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Back", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Text("Confirmation",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel",
                            style:
                            TextStyle(fontSize: 14, color: Colors.red))),
                  ],
                ),
              ),
              Column(


                children: <Widget>[
                  SizedBox(height: 70,),
                  Padding(
                    padding: const EdgeInsets.all( 18.0),
                    child: Container(

                     width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(25)),
                        color: Colors.white,
                      ),
                     child:  Padding(
                       padding: const EdgeInsets.only(left:28.0,right:28),
                       child: Column(
                         children: <Widget>[
                           SizedBox(height: 10,),
                           Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(
                                     Radius.circular(25)),
                                 color: Colors.red,
                               ),
                               height: 5,
                               width: 50),
                           SizedBox(height: 30,),
                           Image.asset("assets/booking.png"),
                           SizedBox(height: 40,),
                           Text("Congratulation",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),),
                           SizedBox(height: 10,),
                           Text("You Booking has been Confirmed.",style: TextStyle(color: Colors.black,fontSize: 15),),
                           SizedBox(height: 20,),
                           Text("#1234AC.",style: TextStyle(color: Colors.red,fontSize: 15, fontWeight: FontWeight.bold),),
                           SizedBox(height: 20,),
                           Text("Lorem ipsum has been the industry's standard dummy text ever since the 1500s",style: TextStyle(color: Colors.black,fontSize: 15),)
                           ,SizedBox(
                             height: 25,
                           ),
                           Container(
                             height: 50,
                             width: MediaQuery.of(context).size.width *
                                 0.8,
                             child: RaisedButton(
                               onPressed: () {
                                 Navigator.of(context)
                                     .popUntil(ModalRoute.withName("/mycardpage"));
                               },
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.all(
                                       Radius.circular(15.0)),
                                   side:
                                   BorderSide(color: Colors.red)),
                               child: Text(
                                 'Go to Home',
                                 style: TextStyle(color: Colors.red),
                               ),
                               color: Colors.white,
                               textColor: Colors.white,
                             ),
                           ),
                           SizedBox(height: 150,)
                         ],
                       ),
                     ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );;
  }

}
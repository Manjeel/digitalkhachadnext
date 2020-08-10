import 'package:digitalkhachad/ui-pages/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:digitalkhachad/bloc/navigation_bloc/navigation_bloc.dart';


class Booking extends StatefulWidget {
  @override
  _Booking createState() => _Booking();
}
class VehiclePriceDetail{
  String itemname;
  String itemvalue;
  String item;

  VehiclePriceDetail(this.itemname, this.itemvalue, this.item);

}
class _Booking extends State<Booking> {
  bool bikecolor=true;
  bool carcolor=false;
  double caropacity=0.3;
  double bikeopcity=1;
  List cardetail=[VehiclePriceDetail("Distance","8","Km"),VehiclePriceDetail("Time","10-15","Min"),VehiclePriceDetail("Cost","200","Rs")];
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
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text("Booking",
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
                SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/map.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.1,
                        bottom: 20,
                        right: 20,
                        child: Column(children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height*0.12,
                            width:  MediaQuery.of(context).size.width*0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(width: 2,color: Colors.red)
                            ),
                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(cardetail[0].itemname,style: TextStyle(fontSize:13),),
                                SizedBox(height: 2,),
                                Text(cardetail[0].itemvalue,style: TextStyle(fontSize:25,color: Colors.red,fontWeight: FontWeight.bold),),
                                SizedBox(height: 2,),
                                Text(cardetail[0].item,style: TextStyle(fontSize:13)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: MediaQuery.of(context).size.height*0.12,

                            width:  MediaQuery.of(context).size.width*0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(width: 2,color: Colors.red)
                            ),
                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(cardetail[1].itemname,style: TextStyle(fontSize:13),),
                                SizedBox(height: 2,),
                                Text(cardetail[1].itemvalue,style: TextStyle(fontSize:18,color: Colors.red,fontWeight: FontWeight.bold),),
                                SizedBox(height: 2,),
                                Text(cardetail[1].item,style: TextStyle(fontSize:13)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: MediaQuery.of(context).size.height*0.12,
                            width:  MediaQuery.of(context).size.width*0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(width: 2,color: Colors.red)
                            ),
                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(cardetail[2].itemname,style: TextStyle(fontSize:13),),
                                SizedBox(height: 2,),
                                Text(cardetail[2].itemvalue,style: TextStyle(fontSize:20,color: Colors.red,fontWeight: FontWeight.bold),),
                                SizedBox(height: 2,),
                                Text(cardetail[2].item,style: TextStyle(fontSize:13)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                        ],),
                      ),
                      Positioned(

                        bottom: MediaQuery.of(context).size.height/7,
                        left:20,
                        right:20,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(25)),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: Colors.red,
                                      ),
                                      height: 5,
                                      width: 50),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            caropacity=0.3;
                                            bikeopcity=1.0;
                                            bikecolor=true;
                                            carcolor=false;
                                            cardetail=[VehiclePriceDetail("Distance","8","Km"),VehiclePriceDetail("Time","10-15","Min"),VehiclePriceDetail("Cost","200","Rs")];
                                          });
                                        },
                                        child: Opacity(
                                          opacity: bikeopcity,
                                          child: Container(
                                            height: 80,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                                border: Border.all(width: 2,color: bikecolor?Colors.red:Colors.grey)
                                            ),
                                              child: Image(image: AssetImage('assets/bike.png'))
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            bikeopcity=0.3;
                                            caropacity=1.0;
                                            bikecolor=false;
                                            carcolor=true;
                                            cardetail=[VehiclePriceDetail("Distance","8","Km"),VehiclePriceDetail("Time","5-10","Min"),VehiclePriceDetail("Cost","500","Rs")];
                                          });
                                        },
                                        child: Opacity(
                                          opacity: caropacity,
                                          child: Container(
                                            height: 80,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                                border: Border.all(width: 2,color:carcolor?Colors.red:Colors.grey)
                                            ),
                                            child: Image(image: AssetImage('assets/car.png'))
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width *
                                        0.8,
                                    child: RaisedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0)),
                                          side:
                                          BorderSide(color: Colors.red)),
                                      child: Text(
                                        'Confirm Booking',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      color: Colors.white,
                                      textColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

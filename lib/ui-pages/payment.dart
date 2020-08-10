import 'package:flutter/material.dart';

import 'confirmation.dart';


class Payment extends StatefulWidget {
  @override
  _Payment createState() => _Payment();
}

class _Payment extends State<Payment> {
  bool digitalborder = true;
  bool cashborder = false;
  bool esewaborder=true;
  bool khaltiborder=false;
  double _animatedHeight = 0.0;

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
          child: Column(
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
                    Text("Payment",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel",
                            style: TextStyle(fontSize: 14, color: Colors.red))),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 28.0, right: 28),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.red,
                                    ),
                                    height: 5,
                                    width: 50),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Payment Sharing",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Sandeep Gurung",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Payment Method",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      print("This is called");
                                      digitalborder = true;
                                      cashborder = false;
                                    });
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                            color: digitalborder
                                                ? Colors.red
                                                : Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)),
                                            border: Border.all(
                                                width: 1,
                                                color: digitalborder
                                                    ? Colors.red
                                                    : Colors.grey)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Digital Payment",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      print("This is called");
                                      digitalborder = false;
                                      cashborder = true;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              color: cashborder
                                                  ? Colors.red
                                                  : Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100)),
                                              border: Border.all(
                                                  width: 1,
                                                  color: cashborder
                                                      ? Colors.red
                                                      : Colors.grey)),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Cash on Delivery",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                           getWidget(),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Details of User",
                              style:
                              TextStyle(color: Colors.black, fontSize: 15),
                            ),


                            Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: TextField(
                                textAlign: TextAlign.start,

//                              controller: searchCtrl,
                                keyboardType: TextInputType.text,

                                decoration: InputDecoration(
                                  hintText: 'Enter Your Name',
                                  hintStyle: TextStyle(fontSize: 16),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.all(16),
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: TextField(
                                textAlign: TextAlign.start,

//                              controller: searchCtrl,
                                keyboardType: TextInputType.text,

                                decoration: InputDecoration(
                                  hintText: 'Contact Number',
                                  hintStyle: TextStyle(fontSize: 16),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.all(16),
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: TextField(
                                textAlign: TextAlign.start,

//                              controller: searchCtrl,
                                keyboardType: TextInputType.text,

                                decoration: InputDecoration(
                                  hintText: 'Enter Promo Code',
                                  hintStyle: TextStyle(fontSize: 16),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.all(16),
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 15,
                            ),
                            getAmountUI(),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width *
                                  0.8,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Confirmation()));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25.0)),
                                    side:
                                    BorderSide(color: Colors.red)),
                                child: Text(
                                  'Payment',
                                  style: TextStyle(color: Colors.red),
                                ),
                                color: Colors.white,
                                textColor: Colors.white,
                              ),
                            ),
                            SizedBox(height: 50,)
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
    );
    ;
  }

  Widget getWidget() {
    if(digitalborder)
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                setState(() {
                  esewaborder=true;
                  khaltiborder=false;
                });
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                        width: 2, color: esewaborder?Colors.red:Colors.grey)),
                child: Image.asset(
                  "assets/esewa.png",
                  scale: 5,
                ),
              ),
            ),
            SizedBox(
              width: 40,
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  esewaborder=false;
                  khaltiborder=true;
                });

              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                        width: 2,  color: khaltiborder?Colors.red:Colors.grey)),
                child: Image.asset(
                  "assets/khalti.png",
                  scale: 5,
                ),
              ),
            )
          ],
        ),
      ],
    );
    else
      return Container();
  }
  Widget getAmountUI(){
    if(digitalborder)
      return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0,
                  2.0), // shadow direction: bottom right
            )
          ],
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new GestureDetector(
              onTap: () => setState(() {
                _animatedHeight != 0.0
                    ? _animatedHeight = 0.0
                    : _animatedHeight = 40.0;
              }),
              child: new Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text("Amount(RS)"),
                      Icon(
                        Icons.keyboard_arrow_down,
                      )
                    ],
                  ),
                ),
                height: 25.0,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            new AnimatedContainer(
                duration:
                const Duration(milliseconds: 120),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "0",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                height: _animatedHeight,
                color: Colors.white,
                width: MediaQuery.of(context).size.width)
          ],
        ),
      );
    else
      return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: TextField(
          textAlign: TextAlign.start,

//                              controller: searchCtrl,
          keyboardType: TextInputType.text,

          decoration: InputDecoration(
            hintText: 'Location',
            hintStyle: TextStyle(fontSize: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            contentPadding: EdgeInsets.all(16),
            fillColor: Colors.white,
          ),
        ),
      );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:digitalkhachad/bloc.navigation_bloc/navigation_bloc.dart';

import 'bookingpage.dart';
import 'loadingTime.dart';


class Location extends StatefulWidget {
  int index;

  Location({this.index});

  @override
  _Location createState() => _Location();
}

class _Location extends State<Location> {
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
                      Text("Location",
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
                        child: Image.asset(
                          "assets/map.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height / 7,
                        right: 20,
                        left: 20,
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
                                    height: 15,
                                  ),
                                  Text(
                                    "Where are You Going Next?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.red),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    textAlign: TextAlign.start,
//                                    controller: searchCtrl,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: 'Search the Location',
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
                                      fillColor: Colors.grey[100],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "From: ",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          Text(
                                            "Your Location",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 30,
                                        width: 2,
                                        color: Colors.grey,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "To: ",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          Text(
                                            "Destination Location",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 50,
                                    width:
                                    MediaQuery.of(context).size.width * 0.8,
                                    child: RaisedButton(
                                      onPressed: () {
                                        if(widget.index==0||widget.index==1)
                                          Navigator.push(

                                              context,
                                              MaterialPageRoute(
                                                  settings: RouteSettings(name: "/loadingtime"),
                                                  builder:
                                                      (context) =>
                                                      LoadingTime(index: widget.index,)));
                                        else if(widget.index==2)
                                          Navigator.push(

                                              context,
                                              MaterialPageRoute(
                                                  settings: RouteSettings(name: "/loadingtime"),
                                                  builder:
                                                      (context) =>
                                                      Booking()));
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0)),
                                          side: BorderSide(color: Colors.red)),
                                      child: Text(
                                        'Search',
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

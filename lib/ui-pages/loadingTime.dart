import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'bookingpage.dart';
import 'bookingpage1.dart';

class LoadingTime extends StatefulWidget {
  int index;

  LoadingTime({this.index});

  @override
  _LoadingTime createState() => _LoadingTime();
}

class _LoadingTime extends State<LoadingTime> {
  List<String> _locations = ['1', '2', '3', '4','5','6','7','8','9']; // Option 2
  String _selectedLocation; //
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
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Estimated Loading Time",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.red),
                                      ),
//                                      Text(
//                                        "Loading Time",
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold,
//                                            fontSize: 20,
//                                            color: Colors.red),
//                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextField(
                                        textAlign: TextAlign.start,
//                                    controller: searchCtrl,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          hintText: 'Loading Time',
                                          hintStyle: TextStyle(fontSize: 16),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
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
                                      NoOfWorker(),

                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        BookingPage()));
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0)),
                                              side: BorderSide(
                                                  color: Colors.red)),
                                          child: Text(
                                            'Confirm',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          color: Colors.white,
                                          textColor: Colors.white,
                                        ),
                                      ),
                                    ],
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

  Widget NoOfWorker() {
    if(widget.index==0)
    return Container(
      height: 50,
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.grey[100]
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(

          hint: Text('Number of Worker',style: TextStyle(color: Colors.black),),
          // Not necessary for Option 1
          value: _selectedLocation,
          onChanged: (newValue) {
            setState(() {
              _selectedLocation = newValue;
            });
          },
          items: _locations.map((location) {
            return DropdownMenuItem(
              child: new Text(location),
              value: location,
            );
          }).toList(),
        ),
      ),
    );
    else
      return Container();
  }
}

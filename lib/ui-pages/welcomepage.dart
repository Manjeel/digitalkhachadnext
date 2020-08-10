import 'package:digitalkhachad/ui-pages/login.dart';
import 'package:digitalkhachad/ui-pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePage extends StatefulWidget{
  @override
  _WelcomePage createState()=>_WelcomePage();
}
class _WelcomePage extends State<WelcomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      // statusBarColor is used to set Status bar color in Android devices.
        statusBarColor: Color.fromRGBO(12, 31, 52, 1),
        // To make Status bar icons color white in Android devices.
        statusBarIconBrightness: Brightness.light,
        // statusBarBrightness is used to set Status bar icon color in iOS.
        statusBarBrightness: Brightness.light
      // Here light means dark color Status bar icons.
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(12, 31, 52, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left:28.0,right:28),
            child: Column(children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height*0.15,),
              Image.asset("assets/esewa.png"),
              SizedBox(height: 50,),
              Text(
                "Digital Khacad",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                textScaleFactor: 2,

              ),
              SizedBox(height: 30,),
              Text(
                "Lorem ipsum has been the industry's standard dummy text ever since the 1500's",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.3,
              ),
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                child: new RaisedButton(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.all(new Radius.circular(10)),
                    ),
                    padding: EdgeInsets.only(
                        top: 16.0, bottom: 16.0, left: 15.0,right: 15),
                    color: Colors.red,
                    onPressed: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(

                            child: Row(
                              children: <Widget>[

                                new Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )),
              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                child: new RaisedButton(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.all(new Radius.circular(10)),
                    ),
                    padding: EdgeInsets.only(
                        top: 16.0, bottom: 16.0, left: 15.0,right: 15),
                    color: Colors.white,
                    onPressed: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(

                            child: Row(
                              children: <Widget>[

                                new Text(
                                  "Register",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )),
              ),
            ],),
          ),
        ),
      ),
    );
  }

}
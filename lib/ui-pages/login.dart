import 'package:digitalkhachad/menu_dashboard_layout/menu_dashboard_layout.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'signup.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  bool _obscureText = true;
  bool email_val = false;
  bool password_val = false;
  bool circularcheck = false;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget circularindicator() {
    if (circularcheck)
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFF0E3311).withOpacity(0.4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ));
    else
      return Container();
  }

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

    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 31, 52, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.4,

              child: Stack(
                children: <Widget>[
                  Image.asset("assets/loginsignup.png"),
                  Positioned(
                    left: MediaQuery.of(context).size.width*0.07,
                    top: MediaQuery.of(context).size.height*0.17,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Welcome to",
                          style: TextStyle(color: Colors.black),
                          textScaleFactor: 2,
                        ),
                        Text(
                          "Login Page",
                          style: TextStyle(color: Colors.red),
                          textScaleFactor: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:28.0,right: 28),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.04,
                      ),

                      Column(
                        children: <Widget>[
                          userNameInput(),
                          Visibility(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "Your Email is Invalid ??",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            maintainSize: false,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: email_val,
                          ),
                          SizedBox(height: 25,),
                          passwordInputField(),
                          Visibility(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "Your Password is Invalid ??",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            maintainSize: false,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: password_val,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Forget Password ?",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                            textScaleFactor: 1.1,
                          ),
                          SizedBox(width: 10,)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(

                        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                        child: new RaisedButton(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.all(new Radius.circular(10)),
                            ),
                            padding: EdgeInsets.only(
                                top: 15.0, bottom: 15.0),
                            color: Colors.redAccent,
                            onPressed: () async {
                              if (EmailValidator.validate(
                                  usernameController.text) ==
                                  false) {
                                setState(() {
                                  email_val = true;
                                });
                              } else {
                                Pattern pattern = r'^[a-zA-Z0-9@]\w{3,14}$';
                                RegExp regex = new RegExp(pattern);
                                if (!regex
                                    .hasMatch(passwordController.text))
                                  setState(() {
                                    password_val = true;
                                  });
                                else {
                                  setState(() {
                                    circularcheck = true;
                                  });
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  Navigator.push(context, MaterialPageRoute(
                                      settings: RouteSettings(name: "/mycardpage"),
                                      builder: (context)=>MenuDashboardLayout()));
                                }
                              }

//                            pr.show();
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 40.0),
                                    child: new Text(
                                      "Sign In",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Open Sans',
                                      ),
                                    )),
                              ],
                            )),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "OR",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[300]),
                            textScaleFactor: 1.2,
                          ),
                        ],
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: new RaisedButton(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.all(new Radius.circular(10)),
                                ),
                                padding: EdgeInsets.only(
                                    top: 13.0, bottom: 13.0, left: 15.0,right:15),
                                color: Colors.white,
                                onPressed: () async {
                                },
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Container(

                                        child: Row(
                                          children: <Widget>[
                                            Icon(FontAwesomeIcons.facebookF,color: Colors.blue[900],),
                                            SizedBox(width: 5,),
                                            new Text(
                                              "Sign In Facebook",
                                              style: TextStyle(
                                                color: Colors.black,
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
                          Container(
                            margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                            child: new RaisedButton(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.all(new Radius.circular(10)),
                                ),
                                padding: EdgeInsets.only(
                                    top: 13.0, bottom: 13.0, left: 15.0,right: 15),
                                color: Colors.white,
                                onPressed: () async {
                                },
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Container(

                                        child: Row(
                                          children: <Widget>[
                                            Icon(FontAwesomeIcons.google,color: Colors.redAccent,),
                                            SizedBox(width: 10,),
                                            new Text(
                                              "Sign In Gmail",
                                              style: TextStyle(
                                                color: Colors.black,
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
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget userNameInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      textAlign: TextAlign.start,
      controller: usernameController,
      cursorColor: Theme.of(context).primaryColor,
      onTap: () {
        setState(() {
          email_val = false;
        });
      },
      maxLines: 1,
      minLines: 1,
      decoration: new InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1,color: Colors.red),
        ),
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(10.0),

          ),

        ),
        isDense: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),

        filled: true,
//                                border: InputBorder.none,
        hintStyle: new TextStyle(color: Color.fromRGBO(187, 187, 187, 1)),
        hintText: "Enter the Email Address",
        fillColor: Colors.white,
      ),
    );
  }


  Widget passwordInputField() {
    return TextFormField(
      textAlign: TextAlign.start,
      obscureText: _obscureText,
      controller: passwordController,
      cursorColor: Theme.of(context).primaryColor,
      onTap: () {
        setState(() {
          password_val = false;
        });
      },
      maxLines: 1,
      minLines: 1,
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1,color: Colors.red),
        ),
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(10.0),

          ),

        ),
        isDense: true,
        filled: true,

        suffixIcon: InkWell(
          onTap: _toggle,
          child: _obscureText
              ? Icon(
            FontAwesomeIcons.eyeSlash,
            size: 20,
          )
              : Icon(
            FontAwesomeIcons.eye,
            size: 20,
          ),
        ),
//                                border: InputBorder.none,
        hintStyle: new TextStyle(color: Color.fromRGBO(187, 187, 187, 1)),
        hintText: "Password",
        contentPadding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
        fillColor: Colors.white,
      ),
    );
  }
}

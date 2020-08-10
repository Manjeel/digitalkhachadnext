import 'dart:io';


import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  String deviceName;
  String deviceVersion;
  String identifier;
  TextEditingController fullnameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController confirmpasswordController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

//  ProgressDialog pr;
//  Repository respository;
  // Initially password is obscure
  bool _passwordobscureText = true;
  bool _confirmpasswordobscureText = true;
  bool email_val = false;
  bool password_val = false;
  bool confirmpassword_val = false;
  bool fullname_val = false;
  bool phone_val = false;
  bool address_val = false;

  // Toggles the password show status
  void _passwordtoggle() {
    setState(() {
      _passwordobscureText = !_passwordobscureText;
    });
  }

  void _confirmpasswordtoggle() {
    setState(() {
      _confirmpasswordobscureText = !_confirmpasswordobscureText;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
            Stack(
              children: <Widget>[
                Image.asset("assets/loginsignup.png",
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.45,
                    fit: BoxFit.fill),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.04,
                  top: MediaQuery.of(context).size.height * 0.17,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Welcome to",
                        style: TextStyle(color: Colors.black),
                        textScaleFactor: 2,
                      ),
                      Text(
                        "Register Page",
                        style: TextStyle(color: Colors.red),
                        textScaleFactor: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30,top: 30,bottom: 30),
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        TextField(
                          textAlign: TextAlign.start,
                          controller: fullnameController,
                          cursorColor: Theme.of(context).primaryColor,
                          onTap: () {
                            setState(() {
                              fullname_val = false;
                            });
                          },
                          maxLines: 1,
                          minLines: 1,
                          keyboardType: TextInputType.text,
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.red),
                            ),
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            isDense: true,
                            contentPadding:
                            EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                            filled: true,
                            hintStyle: new TextStyle(
                                color: Color.fromRGBO(187, 187, 187, 1)),
                            hintText: "Full Name",
                            fillColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Password must contain at least 1 character long and exclude numeric digit and symbols.",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      maintainSize: false,
                      maintainAnimation: true,
                      maintainState: true,
                      visible: fullname_val,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      textAlign: TextAlign.start,
                      controller: emailController,
                      cursorColor: Theme.of(context).primaryColor,
                      onTap: () {
                        setState(() {
                          email_val = false;
                        });
                      },
                      maxLines: 1,
                      minLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(width: 1, color: Colors.red),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        isDense: true,
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                        filled: true,
                        hintStyle: new TextStyle(
                            color: Color.fromRGBO(187, 187, 187, 1)),
                        hintText: "Email",
                        fillColor: Colors.white,
                      ),
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Email must be Valid.",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
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
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      textAlign: TextAlign.start,
                      controller: phoneController,
                      cursorColor: Theme.of(context).primaryColor,
                      onTap: () {
                        setState(() {
                          phone_val = false;
                        });
                      },
                      maxLines: 1,
                      maxLength: 10,
                      minLines: 1,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(width: 1, color: Colors.red),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        isDense: true,
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                        filled: true,
                        hintStyle: new TextStyle(
                            color: Color.fromRGBO(187, 187, 187, 1)),
                        hintText: "e.g: 9805360520",
                        fillColor: Colors.white,
                      ),
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Phone No must be 10 digits long.",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      maintainSize: false,
                      maintainAnimation: true,
                      maintainState: true,
                      visible: phone_val,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      textAlign: TextAlign.start,
                      obscureText: _passwordobscureText,
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
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(width: 1, color: Colors.red),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        isDense: true,
                        filled: true,
                        suffixIcon: InkWell(
                          onTap: _passwordtoggle,
                          child: _passwordobscureText
                              ? Icon(
                            FontAwesomeIcons.eyeSlash,
                            size: 20,
                          )
                              : Icon(
                            FontAwesomeIcons.eye,
                            size: 20,
                          ),
                        ),
                        hintStyle: new TextStyle(
                            color: Color.fromRGBO(187, 187, 187, 1)),
                        hintText: "Password",
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                        fillColor: Colors.white,
                      ),
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Password must be between 4 and 8 digits long and include at least one numeric digit.",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
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
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      textAlign: TextAlign.start,
                      obscureText: _confirmpasswordobscureText,
                      controller: confirmpasswordController,
                      cursorColor: Theme.of(context).primaryColor,
                      onTap: () {
                        setState(() {
                          confirmpassword_val = false;
                        });
                      },
                      maxLines: 1,
                      minLines: 1,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(width: 1, color: Colors.red),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        isDense: true,
                        filled: true,
                        suffixIcon: InkWell(
                          onTap: _confirmpasswordtoggle,
                          child: _confirmpasswordobscureText
                              ? Icon(
                            FontAwesomeIcons.eyeSlash,
                            size: 20,
                          )
                              : Icon(
                            FontAwesomeIcons.eye,
                            size: 20,
                          ),
                        ),
                        hintStyle: new TextStyle(
                            color: Color.fromRGBO(187, 187, 187, 1)),
                        hintText: "Confirm Password",
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 35.0, 0.0, 0.0),
                        fillColor: Colors.white,
                      ),
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Password doesn't match.",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      maintainSize: false,
                      maintainAnimation: true,
                      maintainState: true,
                      visible: confirmpassword_val,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      textAlign: TextAlign.start,
                      controller: addressController,
                      cursorColor: Theme.of(context).primaryColor,
                      onTap: () {
                        setState(() {
                          address_val = false;
                        });
                      },
                      maxLines: 1,
                      minLines: 1,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(width: 1, color: Colors.red),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        isDense: true,
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                        filled: true,
                        hintStyle: new TextStyle(
                            color: Color.fromRGBO(187, 187, 187, 1)),
                        hintText: "Address",
                        fillColor: Colors.white,
                      ),
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Password must exclude special symbols.",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      maintainSize: false,
                      maintainAnimation: true,
                      maintainState: true,
                      visible: address_val,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                      child: new RaisedButton(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.all(
                                new Radius.circular(10)),
                          ),
                          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                          color: Colors.redAccent,
                          onPressed: () async {
                            Pattern pattern =
                                r'^([a-zA-Z]+|[a-zA-Z]+\s{1}[a-zA-Z]{1,}|[a-zA-Z]+\s{1}[a-zA-Z]{3,}\s{1}[a-zA-Z]{1,})$';
                            RegExp regex = new RegExp(pattern);

                            if (!regex.hasMatch(fullnameController.text)) {
                              setState(() {
                                fullname_val = true;
                              });
                            } else {
                              if (EmailValidator.validate(
                                  emailController.text) ==
                                  false) {
                                setState(() {
                                  email_val = true;
                                });
                              } else {
                                Pattern pattern = r'^[0-9]{10}$';
                                RegExp regex = new RegExp(pattern);
                                if (!regex.hasMatch(phoneController.text)) {
                                  setState(() {
                                    phone_val = true;
                                  });
                                } else {
                                  Pattern pattern = r'^(?=.*\d).{4,8}$';
                                  RegExp regex = new RegExp(pattern);

                                  if (!regex
                                      .hasMatch(passwordController.text)) {
                                    setState(() {
                                      password_val = true;
                                    });
                                  } else {
                                    if (confirmpasswordController.text !=
                                        passwordController.text) {
                                      setState(() {
                                        confirmpassword_val = true;
                                      });
                                    } else {
                                      Pattern pattern =
                                          r'^([0-9a-zA-Z]+|[0-9a-zA-Z]+\s{1}[0-9a-zA-Z]{1,}|[0-9a-zA-Z]+\s{1}[0-9a-zA-Z]{3,}\s{1}[0-9a-zA-Z]{1,})$';
                                      RegExp regex = new RegExp(pattern);

                                      if (!regex.hasMatch(
                                          addressController.text)) {
                                        setState(() {
                                          address_val = true;
                                        });
                                      } else {
                                        FocusScope.of(context)
                                            .requestFocus(FocusNode());
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          },
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                  padding: EdgeInsets.only(
                                      left: 20.0, right: 40.0),
                                  child: new Text(
                                    "Register",
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


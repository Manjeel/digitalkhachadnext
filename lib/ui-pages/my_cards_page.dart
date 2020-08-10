import 'package:digitalkhachad/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:digitalkhachad/model/ItemModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'locationpage.dart';

class MyCardsPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;
  final List<items> itemsdata=[
    items("House Shift Plan","Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
    items("Delivery","Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
    items("Rider Partner","Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")];
  MyCardsPage({Key key, this.onMenuTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
//        borderRadius: BorderRadius.all(Radius.circular(40)),
//        border: Border.all(color: Colors.white,width: 1),
        color: Color.fromRGBO(12, 31, 52, 1),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
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
                      InkWell(
                        child: Icon(Icons.menu, color: Colors.white),
                        onTap: onMenuTap,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.red),
                          ),
                          Text(
                            "Sandeep Gurung",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      new Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: new ShapeDecoration(
                              shape: CircleBorder(
                                side: BorderSide(width: 2, color: Colors.red),
                              ),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage("assets/sandeep.jpg")))),

                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: Image.asset(
                          "assets/present.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 180.0, left: 20, right: 20),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(25)),
                              color: Colors.grey[100],
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 10.0, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: itemsdata.length,
                                      physics:
                                      const NeverScrollableScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext ctxt, int index) {
                                        return Column(
                                          children: <Widget>[
                                            InkWell(
                                              onTap:(){
//                                                if(index==0)
                                                Navigator.push(

                                                    context,
                                                    MaterialPageRoute(
                                                        settings: RouteSettings(name: "/location"),
                                                        builder:
                                                            (context) =>
                                                            Location(index: index,)));
//                                                if(index==1)

                                              },
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(15.0),
                                                ),
                                                color: Colors.white,
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(15.0),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Flexible(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: <Widget>[
                                                            Text(
                                                              itemsdata[index].title,
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  fontSize: 17),
                                                            ),
                                                            SizedBox(height: 10),
                                                            Text(
                                                                itemsdata[index].description,
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal))
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(Icons
                                                          .add_circle_outline,
                                                        color: Colors.red,
                                                      ),

                                                      SizedBox(
                                                        width: 10,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Promo Code",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Container(
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.2,
                                      child: Image.asset(
                                        "assets/promocode.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
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


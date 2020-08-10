import 'package:flutter/material.dart';
import 'package:digitalkhachad/bloc/navigation_bloc/navigation_bloc.dart';

class history extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const history({Key key, this.onMenuTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Color.fromRGBO(12,31, 52 ,1),
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

                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: Icon(Icons.menu, color: Colors.white),
                        onTap: onMenuTap,
                      ),
                      SizedBox(width: 10,),
                      Text("History",
                          style: TextStyle(color: Colors.white, fontSize: 16)),


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
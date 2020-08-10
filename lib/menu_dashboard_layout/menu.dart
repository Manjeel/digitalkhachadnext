import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:digitalkhachad/bloc/navigation_bloc/navigation_bloc.dart';

class Menu extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> menuAnimation;
  final int selectedIndex;
  final Function onMenuItemClicked;

  const Menu(
      {Key key,
        this.slideAnimation,
        this.menuAnimation,
        this.selectedIndex,
        @required this.onMenuItemClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: menuAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0,top:100),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: new ShapeDecoration(
                              shape: CircleBorder(
                                side: BorderSide(width: 2, color: Colors.red),
                              ),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage("assets/sandeep.jpg")))),
                      SizedBox(width: 15,),
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
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.DashboardClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom: 15),
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.home,color: selectedIndex == 0
                            ? Colors.red:Colors.white,),
                        SizedBox(width: 20,),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: selectedIndex == 0
                                ? Colors.red:Colors.white,
                            fontSize: 16,
                            fontWeight: selectedIndex == 0
                                ? FontWeight.w900
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.profileClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom: 15),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.perm_identity,color: selectedIndex == 1
                            ? Colors.red:Colors.white,),
                        SizedBox(width: 20,),
                        Text("Profile",
                          style: TextStyle(
                            color:selectedIndex == 1
                                ? Colors.red:Colors.white,
                            fontSize: 16,
                            fontWeight: selectedIndex == 1
                                ? FontWeight.w900
                                : FontWeight.normal,
                          ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.myrideClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom: 15),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.directions_bike,color: selectedIndex == 2
                            ? Colors.red:Colors.white,),
                        SizedBox(width: 20,),
                        Text("My Ride",
                          style: TextStyle(
                            color: selectedIndex == 2
                                ? Colors.red:Colors.white,
                            fontSize: 16,
                            fontWeight: selectedIndex == 2
                                ? FontWeight.w900
                                : FontWeight.normal,
                          ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.historyClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom: 15),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.history,color: selectedIndex == 3
                            ? Colors.red:Colors.white,),
                        SizedBox(width: 20,),
                        Text("History",
                          style: TextStyle(
                            color: selectedIndex == 3
                                ? Colors.red:Colors.white,
                            fontSize: 16,
                            fontWeight: selectedIndex == 3
                                ? FontWeight.w900
                                : FontWeight.normal,
                          ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.notificationClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom: 15),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.notifications_none,color: selectedIndex == 4
                            ? Colors.red:Colors.white,),
                        SizedBox(width: 20,),
                        Text("Notification",
                          style: TextStyle(
                            color: selectedIndex == 4
                                ? Colors.red:Colors.white,
                            fontSize: 16,
                            fontWeight: selectedIndex == 4
                                ? FontWeight.w900
                                : FontWeight.normal,
                          ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.settingClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom: 15),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.settings,color: selectedIndex == 5
                            ? Colors.red:Colors.white,),
                        SizedBox(width: 20,),
                        Text("Setting",
                          style: TextStyle(
                            color: selectedIndex == 5
                                ? Colors.red:Colors.white,
                            fontSize: 16,
                            fontWeight: selectedIndex == 5
                                ? FontWeight.w900
                                : FontWeight.normal,
                          ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.logoutClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom: 15),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.exit_to_app,color: selectedIndex == 6
                            ? Colors.red:Colors.white,),
                        SizedBox(width: 20,),
                        Text("Logout",
                          style: TextStyle(
                            color: selectedIndex == 6
                                ? Colors.red:Colors.white,
                            fontSize: 16,
                            fontWeight: selectedIndex == 6
                                ? FontWeight.w900
                                : FontWeight.normal,
                          ),),
                      ],
                    ),
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


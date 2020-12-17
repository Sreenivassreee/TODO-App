//import 'package:flutter/material.dart';
//
//class HomeDesign extends StatefulWidget {
//  @override
//  HomeDesignState createState() => HomeDesignState();
//}
//
//// SingleTickerProviderStateMixin is used for animation
//class HomeDesignState extends State<HomeDesign>
//    with SingleTickerProviderStateMixin {
//  TabController controller;
//
//  final _key = new GlobalKey<FormState>();
//
//  @override
//  void dispose() {
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    PageController _myPage = PageController(initialPage: 0);
//
//    return Scaffold(
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//      bottomNavigationBar: BottomAppBar(
//        shape: CircularNotchedRectangle(),
//        child: Container(
//          // color: Colors.black,
//          height: 55,
//          child: Row(
//            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              IconButton(
//                iconSize: 25.0,
//                padding: EdgeInsets.only(left: 28.0),
//                icon: Icon(Icons.dashboard),
//                onPressed: () {
//                  setState(() {
//                    _myPage.jumpToPage(0);
//                  });
//                },
//              ),
//              IconButton(
//                iconSize: 25.0,
//                padding: EdgeInsets.only(right: 28.0),
//                icon: Icon(Icons.person),
//                onPressed: () {
//                  setState(() {
//                    _myPage.jumpToPage(1);
//                  });
//                },
//              ),
//              IconButton(
//                iconSize: 25.0,
//                padding: EdgeInsets.only(left: 28.0),
//                icon: Icon(Icons.account_balance),
//                onPressed: () {
//                  setState(() {
//                    _myPage.jumpToPage(2);
//                  });
//                },
//              ),
//              IconButton(
//                iconSize: 25.0,
//                padding: EdgeInsets.only(right: 28.0),
//                icon: Icon(Icons.notifications_active),
//                onPressed: () {
//                  setState(() {
//                    _myPage.jumpToPage(3);
//                  });
//                },
//              )
//            ],
//          ),
//        ),
//      ),
//      body: PageView(
//        controller: _myPage,
//        scrollDirection: Axis.horizontal,
//        onPageChanged: (int) {},
//        children: <Widget>[
//          Center(
//            child: Container(
//              child: Center(
//                child: Text(
//                  "HI",
//                  style: TextStyle(color: Colors.red, fontSize: 30.0),
//                ),
//              ),
//            ),
//          ),
//          Center(
//            child: Container(
//              color: Colors.red,
//            ),
//          ),
//          Center(
//            child: Container(
//              color: Colors.yellow,
//            ),
//          ),
//          Center(
//            child: Container(
//              color: Colors.green,
//            ),
//          )
//        ],
////        physics:
////            NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
//      ),
//      floatingActionButton: Container(
//        height: 65.0,
//        width: 65.0,
//        child: Padding(
//          padding: const EdgeInsets.all(4.0),
//          child: FittedBox(
//            child: FloatingActionButton(
//              backgroundColor: Colors.red,
//              onPressed: () {},
//              child: Icon(
//                Icons.add,
//                color: Colors.white,
//              ),
//              // elevation: 5.0,
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}

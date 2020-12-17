//import 'package:flutter/material.dart';
//import 'package:flutter_slidable/flutter_slidable.dart';
//import '../Global.dart';
//import 'CustomAlert.dart';
//import 'package:sqflite/sqflite.dart';
//import 'package:todo_pro/database_helper.dart';
//import '../Note.dart';
//import 'note_details.dart';
//
//class Do extends StatefulWidget {
//  @override
//  _DoState createState() => _DoState();
//}
//
//class _DoState extends State<Do> {
//  DatabaseHelper databaseHelper = DatabaseHelper();
//  List<Note> noteList;
//  int count = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          "TODO List",
//          style: TextStyle(color: Colors.white),
//        ),
//        backgroundColor: Colors.black,
//        centerTitle: true,
//        elevation: 0.0,
//      ),
//      backgroundColor: background,
////      body:
//////      getNoteListView(),
//////      Container(
//////        child: ListView.builder(
//////          itemCount: 10,
//////          itemBuilder: (BuildContext context, int index) => card(),
////        ),
////      ),
////    );
////  }
//
////  ListView getNoteListView() {
////    return ListView.builder(
////      itemCount: count,
////      itemBuilder: (context, position) {
////        return Card(
////          shape: RoundedRectangleBorder(
////            borderRadius: BorderRadius.circular(10.0),
////          ),
////          color: Colors.deepPurple,
////          elevation: 4.0,
////          child: ListTile(
////            leading: CircleAvatar(
////              backgroundImage:
////                  NetworkImage("https://learncodeonline.in/mascot.png"),
////            ),
////            title: Text(
////              this.noteList[position].title,
////              style: TextStyle(
////                color: Colors.white,
////                fontWeight: FontWeight.bold,
////                fontSize: 25.0,
////              ),
////            ),
////            subtitle: Text(
////              this.noteList[position].date,
////              style: TextStyle(color: Colors.white),
////            ),
////            trailing: GestureDetector(
////              child: Icon(Icons.open_in_new, color: Colors.white),
////              onTap: () {
////                navigateToDetail(this.noteList[position], 'Edit Todo');
////              },
////            ),
////          ),
////        );
////      },
////    );
////  }
//
//  void navigateToDetail(Note note, String title) async {
//    bool result = await Navigator.push(
//      context,
//      MaterialPageRoute(
//        builder: (context) {
//          return NoteDetail(note, title);
//        },
//      ),
//    );
//
//    if (result == true) {
//      updateListView();
//    }
//  }
//
//  void updateListView() {
//    final Future<Database> dbFuture = databaseHelper.initalizeDatabase();
//    dbFuture.then((database) {
//      Future<List<Note>> noteListFuture = databaseHelper.getNoteList();
//      noteListFuture.then((noteList) {
//        setState(() {
//          this.noteList = noteList;
//          this.count = noteList.length;
//        });
//      });
//    });
//  }
//
//  Widget card() {
//    return GestureDetector(
//        onTap: () {
//          setState(() {
////        list[index].isSelected = true;
//
//            showDialog(
//              context: context,
//              builder: (_) => LogoutOverlay(),
//            );
//            print("hi");
//          });
//        },
//        child: Container(
//          child: Card(
//            color: cardColor,
//            child: Slidable(
//              actionPane: SlidableDrawerActionPane(),
//              actionExtentRatio: 0.20,
//              child: ListTile(
//                leading: Container(
//                  width: 5.0,
//                  color: Colors.red,
//                ),
//                title: Padding(
//                  padding: const EdgeInsets.only(top: 7, bottom: 7),
//                  child: Text("i Need to Do somthing Special",
//                      style: Theme.of(context).textTheme.title),
//                ),
//                subtitle: Padding(
//                  padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      Text(
//                        "Schedule: 2/6/2020",
//                        style: TextStyle(color: Colors.white),
//                      ),
//                      Container(
//                        color: Colors.yellow[200],
//                        child: Padding(
//                          padding: const EdgeInsets.all(2.0),
//                          child: Text(
//                            "Target: 2/6/2020",
//                            style: TextStyle(color: Colors.black),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//              actions: <Widget>[
//                IconSlideAction(
//                  caption: 'Edit',
//                  color: Colors.blue,
//                  icon: Icons.edit,
//                  onTap: () => {},
//                ),
//                IconSlideAction(
//                    caption: 'Stoped',
//                    color: Colors.red,
//                    icon: Icons.stop,
//                    onTap: () => {}),
//              ],
//              secondaryActions: <Widget>[
//                IconSlideAction(
//                    caption: 'Doing',
//                    color: Colors.yellow,
//                    icon: Icons.done_all,
//                    onTap: () => {}),
//                IconSlideAction(
//                    color: Colors.green,
//                    icon: Icons.done_outline,
//                    caption: 'Done',
//                    onTap: () => {}),
//              ],
//            ),
//          ),
//        ));
//  }
//}

import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}

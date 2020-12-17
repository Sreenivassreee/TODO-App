import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_pro/Global.dart';
import 'Global.dart';
import 'Screens/Do.dart';
import 'Screens/Doing.dart';
import 'package:sliding_panel/sliding_panel.dart';
import 'Screens/EnterScreen.dart';
import 'Note.dart';
import 'package:todo_pro/database_helper.dart';

import 'Screens/note_details.dart';

//void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
          fontFamily: 'arial',
          primarySwatch: Colors.yellow,
          primaryColor: Colors.orange,
          textTheme: TextTheme(
            title: titleTextTheme,
          )),
      debugShowCheckedModeBanner: false,
      title: "TODO Pro",
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              new Container(
                child: getNoteListView(),
              ),
              new Container(
                child: Doing(),
              ),
              new Container(
                color: Colors.lightGreen,
              ),
              new Container(
                color: Colors.black,
              ),
            ],
          ),
          floatingActionButton: Container(
            height: 70.0,
            width: 70.0,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
//                    navigateToDetail(Note('', '', 2), 'Add Note');
                    NextScreenDemo();
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  elevation: 5.0,
                ),
              ),
            ),
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.done),
              ),
              Tab(
                icon: new Icon(Icons.done_all),
              ),
              Tab(
                icon: new Icon(
                  Icons.done_outline,
                  color: Colors.green,
                ),
              ),
              Tab(
                icon: new Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
              )
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }

  ListView getNoteListView() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, position) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.deepPurple,
          elevation: 4.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://learncodeonline.in/mascot.png"),
            ),
            title: Text(
              this.noteList[position].title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            subtitle: Text(
              this.noteList[position].date,
              style: TextStyle(color: Colors.white),
            ),
            trailing: GestureDetector(
              child: Icon(Icons.open_in_new, color: Colors.white),
              onTap: () {
                navigateToDetail(this.noteList[position], 'Edit Todo');
              },
            ),
          ),
        );
      },
    );
  }

  void navigateToDetail(Note note, String title) async {
    bool result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return NoteDetail(note, title);
        },
      ),
    );

    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initalizeDatabase();
    dbFuture.then((database) {
      Future<List<Note>> noteListFuture = databaseHelper.getNoteList();
      noteListFuture.then((noteList) {
        setState(() {
          this.noteList = noteList;
          this.count = noteList.length;
        });
      });
    });
  }

  void NextScreenDemo() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Demo();
        },
      ),
    );
  }
}

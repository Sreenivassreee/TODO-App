import 'package:flutter/material.dart';

class Doing extends StatefulWidget {
  @override
  _DoingState createState() => _DoingState();
}

class _DoingState extends State<Doing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doing DOTO list"),
        centerTitle: true,
      ),
    );
  }
}

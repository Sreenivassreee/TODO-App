import 'package:flutter/material.dart';

class Finished extends StatefulWidget {
  @override
  _FinishedState createState() => _FinishedState();
}

class _FinishedState extends State<Finished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finished TODO list"),
        centerTitle: true,
      ),
    );
  }
}

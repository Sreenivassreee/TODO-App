import 'package:flutter/material.dart';

class EnterScreen extends StatefulWidget {
  @override
  _EnterScreenState createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sreenivas"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

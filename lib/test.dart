
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
//    Scaffold.of(context).showSnackBar(snackbar);
//    Scaffold.of(context).
    return Scaffold(
      appBar: AppBar(
        title: Text("My Test"),
      ),
      body: Center(
        child: Text("My Body"),
      ),
    );
  }
}

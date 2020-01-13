
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Test"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("打开"),
            onTap: (){
              Scaffold.of(context).showSnackBar(
                const SnackBar(content: Text('这里是')),
              );
            },
          )
        ],
      ),
    );
  }
}

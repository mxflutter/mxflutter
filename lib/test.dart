
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TestPageScaffoldNorWork extends StatelessWidget{
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
          ),
        ],
      ),
    );
  }
}

class TestPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Test"),
      ),
      body: Scrollbar(
        child: AnimatedPhysicalModel(
          child:Container(
            width: 100,
            height: 50,
            color: Colors.orange,
          ),
          shape: BoxShape.rectangle,
          elevation: 100,
          color: Colors.blue,
          shadowColor: Colors.grey,
          duration: new Duration(seconds:2),
        ),
      ),
    );
  }
}

class MyScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: ListView(
        children: <Widget>[
          FlutterLogo(
            colors: Colors.orange,
          ),
          RaisedButton(
            child: Text('SHOW A SNACKBAR'),
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Have a snack!'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

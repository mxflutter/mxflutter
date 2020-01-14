
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
        child: MyScaffoldBody(),
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

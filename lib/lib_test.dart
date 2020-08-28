import 'package:flutter/material.dart';

class MyHomeLibPage extends StatefulWidget {
  MyHomeLibPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomeLibPageState createState() => _MyHomeLibPageState();
}

class _MyHomeLibPageState extends State<MyHomeLibPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('PageExampleAlign'),
          bottom: new TabBar(
            tabs: [new Tab(text: 'A'), new Tab(text: 'B')],
          ),
        ),
        body: new TabBarView(
          children: [new CounterPage(title: 'A'), new CounterPage(title: 'B')],
        ),
      ),
    );
  }
}

class CounterPage extends StatefulWidget {
  CounterPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {

    super.build(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.title,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  KeepAliveHandle _keepAliveHandle;

  void _ensureKeepAlive() {
    assert(_keepAliveHandle == null);
    _keepAliveHandle = KeepAliveHandle();
    KeepAliveNotification(_keepAliveHandle).dispatch(context);
  }

  void _releaseKeepAlive() {
    _keepAliveHandle.release();
    _keepAliveHandle = null;
  }


  /// Ensures that any [AutomaticKeepAlive] ancestors are in a good state, by
  /// firing a [KeepAliveNotification] or triggering the [KeepAliveHandle] as
  /// appropriate.
  @protected
  void updateKeepAlive() {
    if (wantKeepAlive) {
      if (_keepAliveHandle == null)
        _ensureKeepAlive();
    } else {
      if (_keepAliveHandle != null)
        _releaseKeepAlive();
    }
  }

  @override
  void initState() {
    super.initState();

  }

  @override
  void deactivate() {
    if (_keepAliveHandle != null)
      _releaseKeepAlive();
    super.deactivate();
  }



}

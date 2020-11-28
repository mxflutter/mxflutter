import mxflutter, {
  MXJSStatelessWidget,
  MXJSStatefulWidget,
  MXJSWidgetState,
  MXJSBuildContext,
} from '@tencent/mxflutter';

import {
  MaterialApp,
  Theme,
  Scaffold,
  AppBar,
  FloatingActionButton,
  Icons,
  Column,
  Text,
  Center,
  Icon,
  MainAxisAlignment,
} from '@tencent/mxflutter-widgets/material';

class MyApp extends MXJSStatelessWidget {
  public constructor() {
    super('MyApp');
  }

  public build() {
    return new MaterialApp({
      title: 'Flutter Demo',
      home: new MyHomePage('Flutter Demo Home Page'),
    });
  }
}

class MyHomePage extends MXJSStatefulWidget {
  public title: string;
  public constructor(title: string) {
    super('MyHomePage');
    this.title = title;
  }

  public createState() {
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends MXJSWidgetState {
  public counter: number;
  public widget: MyHomePage;

  public constructor() {
    super();
    this.counter = 0;
  }

  public build(context: MXJSBuildContext) {
    return new Scaffold({
      appBar: new AppBar({
        title: new Text(this.widget.title),
      }),
      body: new Center({
        child: new Column({
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text('You have pushed the button this many times:'),
            new Text(`${this.counter}`, {
              style: Theme.of(context).textTheme.headline4,
            }),
          ],
        }),
      }),
      floatingActionButton: new FloatingActionButton({
        onPressed: () => {
          this.incrementCounter();
        },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      }),
    });
  }

  public incrementCounter() {
    this.setState(() => {
      this.counter += 1;
    });
  }
}

mxflutter.regist({
  name: 'mxflutter-homepage',
  RootWidget: MyApp,
});

import 'dart_flutter_framework.dart';
import 'dart_flutter_ui.dart';
import 'pesto.dart';

class DartWidgetHomePage extends MXDartWidget {
  DartWidgetHomePage() {
    this.name = "DartWidgetHomePage";
  }

  @override
  build(buildContext) {
    var demoList = ListView(
      children: [
        Padding(padding: EdgeInsets.all(1.0)),
        sectionTitle(buildContext, "App Demo"),      
        ListTile(
          leading: Icon(IconData(0xe39d, fontFamily:'MaterialIcons')),
          trailing: Icon(IconData(0xe5df, fontFamily: 'MaterialIcons', matchTextDirection: true)),
          title: Text("Pesto"),
          subtitle: Text('Simple recipe browser'),
          onTap: createCallbackID((args){
            navigatorPush(DartPestoPage());
          }),
        ),
        ListTile(
          leading: Icon(IconData(0xe06d, fontFamily:'MaterialIcons')),
          trailing: Icon(IconData(0xe5df, fontFamily: 'MaterialIcons', matchTextDirection: true)),
          title: Text("Shrine"),
          subtitle: Text('Basic shopping app'),
          onTap: createCallbackID((args){
            navigatorPush(DartWidgetHomePage());
          }),
        ),
        ListTile(
          leading: Icon(IconData(0xe0d0, fontFamily:'MaterialIcons')),
          trailing: Icon(IconData(0xe5df, fontFamily: 'MaterialIcons', matchTextDirection: true)),
          title: Text("Contact profile"),
          subtitle: Text('Address book entry with a flexible appbar'),
          onTap: createCallbackID((args){
            navigatorPush(DartWidgetHomePage());
          }),
        ),
        ListTile(
          leading: Icon(IconData(0xe06d, fontFamily:'MaterialIcons')),
          trailing: Icon(IconData(0xe5df, fontFamily: 'MaterialIcons', matchTextDirection: true)),
          title: Text("Animation"),
          subtitle: Text('Section organizer'),
          onTap: createCallbackID((args){
            navigatorPush(DartWidgetHomePage());
          }),
        ),
        sectionTitle(buildContext, "DartWidget Demo"),      
        ListTile(
          leading: Icon(IconData(0xe06d, fontFamily:'MaterialIcons')),
          trailing: Icon(IconData(0xe5df, fontFamily: 'MaterialIcons', matchTextDirection: true)),
          title: Text("Buttons"),
          subtitle: Text('Buttons UI Demo'),
          onTap: createCallbackID((args){
            navigatorPush(DartWidgetHomePage());
          }),
        ),
        ListTile(
          leading: Icon(IconData(0xe06d, fontFamily:'MaterialIcons')),
          trailing: Icon(IconData(0xe5df, fontFamily: 'MaterialIcons', matchTextDirection: true)),
          title: Text("Tabs"),
          subtitle: Text('ListView UI Demo'),
          onTap: createCallbackID((args){
            navigatorPush(DartWidgetHomePage());
          }),
        ),
        ListTile(
          leading: Icon(IconData(0xe06d, fontFamily:'MaterialIcons')),
          trailing: Icon(IconData(0xe5df, fontFamily: 'MaterialIcons', matchTextDirection: true)),
          title: Text("ListView"),
          subtitle: Text('ListView UI Demo'),
          onTap: createCallbackID((args){
            navigatorPush(DartWidgetHomePage());
          }),
        ),
        ListTile(
          leading: Icon(IconData(0xe06d, fontFamily:'MaterialIcons')),
          trailing: Icon(IconData(0xe5df, fontFamily: 'MaterialIcons', matchTextDirection: true)),
          title: Text("Material"),
          subtitle: Text('Material UI Demo'),
          onTap: createCallbackID((args){
            navigatorPush(DartWidgetHomePage());
          }),
        ),
        sectionTitle(buildContext, "More Material"),      
        ListTile(
          leading: Icon(IconData(0xe39d, fontFamily:'MaterialIcons')),
          trailing: Icon(IconData(0xe5df, fontFamily: 'MaterialIcons', matchTextDirection: true)),
          title: Text("More Material"),
          subtitle: Text('More Material UI Demo'),
          onTap: createCallbackID((args){
            navigatorPush(DartWidgetHomePage());
          }),
        ),
      ]
    );
    var w = Scaffold(
      appBar: AppBar(
        title: Text("DartFlutter UI Demo"),
      ),
      body: demoList,
    );
    return w;    
  }
}

sectionTitle(context, title){
    var t = Container(
        padding: EdgeInsets.all(5.0), 
        color: DartFlutterTheme.of(context).primaryColor,
        child: Row(
            children: [
                Icon(IconData(0xe80e), size: 16.1, color: new Color(0xFFFFFFFF)),
                Padding(padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0)),
                Text(title, textAlign: TextAlign.start.toString())],
        ),
    );
    return t;
}

class AppTest extends MXDartFlutterApp {
  AppTest() {
    this.name = "app_test";
    this.initialRoute = "initRouteName";
  }
  
  @override
  createDartWidgetWithName(pageName) {
    var w = DartWidgetHomePage();
    return w;
  }
}

void main() {
  runDartFlutterApp(AppTest());
  print("hello dartFlutter");
}

void debugMain() {
  main();
}
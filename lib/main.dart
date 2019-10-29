import 'package:flutter/material.dart';
import 'package:flutterstagram/main_tabs_container.dart';
import 'package:flutterstagram/widgets/post.dart';
import 'package:flutterstagram/widgets/story_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MainTabsContainer(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title = 'FlutterStagram'}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          leading: Icon(Icons.photo_camera),
          title: Text(widget.title),
          titleSpacing: -5,
          backgroundColor: Colors.black,
          actions: <Widget>[
            Icon(Icons.live_tv),
            SizedBox(width: 25),
            Icon(Icons.arrow_forward_ios),
            SizedBox(width: 15),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.black,
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    StoryIcon(),
                    SizedBox(width: 15),
                    StoryIcon(text: 'jfushada'),
                    SizedBox(width: 15),
                    StoryIcon(text: 'dehamzah'),
                    SizedBox(width: 15),
                    StoryIcon(text: 'alexislvna'),
                    SizedBox(width: 15),
                    StoryIcon(text: 'darmawanarvin'),
                    SizedBox(width: 15),
                    StoryIcon(text: 'ffushada'),
                    SizedBox(width: 15),
                    StoryIcon(text: 'pungky95'),
                    SizedBox(width: 15),
                    StoryIcon(text: 'wahyoo.group'),
                    SizedBox(width: 15),
                    StoryIcon(text: 'stephanus.adrianto'),
                    SizedBox(width: 15),
                    StoryIcon(text: 'geraldyts'),
                    SizedBox(width: 15),
                    StoryIcon(text: 'aninditayrnt'),
                  ],
                ),
              ),
            ),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:project_p/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: initRoute(),
      routes: appRoutes(context),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Dizim share',
        text: 'Dizim share text',
        linkUrl: 'https://dizim.ai/',
        chooserTitle: 'Dizim Chooser Title');
  }

  void openScannerApp(BuildContext context) {
    Navigator.pushNamed(context, "/scanner");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PROJECT P"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                  onPressed: share,
                  icon: Icon(Icons.share),
                  label: Text("Share")),
              TextButton.icon(
                  onPressed: () => {openScannerApp(context)},
                  icon: Icon(Icons.scanner),
                  label: Text("Scanner App"))
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

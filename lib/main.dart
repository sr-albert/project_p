import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_p/pages/qr_scanner_page.dart';
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onPressed(String mode) {
    switch(mode) {
      case "qr" : Navigator.push(context, MaterialPageRoute(builder: (context) => QrScannerPage())); break;
      default: 
    return debugPrint("PRessed button qrscanner");

    }
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
          children: <Widget>[
            FlatButton(
                child: Text("QR SCANNER"),
                onPressed: () {
                  _onPressed("qr");
                }),
          ],
        ),
      )  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

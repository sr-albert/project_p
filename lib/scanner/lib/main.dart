import 'package:flutter/material.dart';
import 'package:project_p/scanner/lib/share/pages/login.page.dart';

void main() {
  runApp(ScannerApp());
}

class ScannerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {"/login": (context) => LoginPage()},
    );
  }
}

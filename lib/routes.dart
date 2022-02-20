import 'package:flutter/material.dart';
import 'package:project_p/modules/scanner/lib/main.dart';
import 'package:project_p/modules/scanner/lib/share/pages/login.page.dart';
import 'package:project_p/ui/shared/pages/functionals.page.dart';

String initRoute() {
  return "/app-login";
}

Map<String, Widget Function(BuildContext)> appRoutes(BuildContext context) {
  // TODO: Make code dynamic load it
  return {
    "/": (context) => FunctionalsPage(),
    "/scanner": (context) => ScannerApp(),
    "/app-login": (context) => LoginPage(),
    "/app-func": (context) => FunctionalsPage(),
  };
}

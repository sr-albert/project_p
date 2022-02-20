// This layout as common layout
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppLayout extends StatelessWidget {
  AppLayout({Key? key, this.appBar, required this.body}) : super(key: key);

  late PreferredSizeWidget? appBar;

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: this.appBar ??
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: null,
          ),
      body: this.body,
    );
  }
}

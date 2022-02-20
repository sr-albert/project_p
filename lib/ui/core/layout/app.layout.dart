// This layout as common layout
import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;

  const AppLayout({Key? key, this.appBar, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this.appBar,
      body: this.body,
    );
  }
}

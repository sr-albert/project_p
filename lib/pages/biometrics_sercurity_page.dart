import 'package:flutter/material.dart';

class BiometricSercurityPage extends StatefulWidget {
  BiometricSercurityPage({Key key}) : super(key: key);

  @override
  _BiometricSercurityPageState createState() => _BiometricSercurityPageState();
}

class _BiometricSercurityPageState extends State<BiometricSercurityPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Authentication page"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_p/ui/core/layout/app.layout.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        body: Center(
      child: Text("Login Page"),
    ));
  }
}

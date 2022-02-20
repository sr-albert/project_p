import 'package:flutter/material.dart';
import 'package:project_p/modules/scanner/lib/share/widgets/cus_button.dart';
import 'package:project_p/modules/scanner/lib/share/widgets/cus_input.dart';
import 'package:project_p/modules/scanner/lib/share/widgets/logo.dart';
import 'package:project_p/ui/core/layout/app.layout.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userNameController = new TextEditingController();

  final TextEditingController _pwdController = new TextEditingController();

  bool _showPassword = false;

  void _signIn() {}

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Logo(),
              ],
            ),
            CusInputWidget(label: "Username", controler: _userNameController),
            CusInputWidget(
                label: "Password",
                controler: _pwdController,
                isShowPassword: _showPassword,
                isPassword: true,
                onShowPassword: () => {
                      this.setState(() {
                        _showPassword = !_showPassword;
                      })
                    }),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Button forgot password
                CustomButton(
                    onPress: _signIn,
                    label: "Forgot password?",
                    labelStyle:
                        TextStyle(decorationStyle: TextDecorationStyle.dashed))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Button forgot password
                CustomButton(
                    onPress: _signIn,
                    label: "Login",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        decorationStyle: TextDecorationStyle.solid))
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Private policy"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Do not have an account? "),
                      CustomButton(label: "Register here")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

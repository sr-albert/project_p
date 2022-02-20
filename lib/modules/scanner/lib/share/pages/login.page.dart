import 'package:flutter/material.dart';
import 'package:project_p/modules/scanner/lib/share/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [Logo()],
            ),
          ],
        ),
      ),
    );
  }
}

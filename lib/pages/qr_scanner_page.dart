import "package:flutter/material.dart";
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScannerPage extends StatefulWidget {
  QrScannerPage({Key key}) : super(key: key);

  @override
  _QrScannerPageState createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  String _qrValue = "";
  void _turnSplashOnOff() {}
  void _switchCamera() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.grey),
              child: Center(
                child: Text("Scanner here ...."),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(children: [
                    Flexible(
                      flex: 1,
                      child: FlatButton(
                          onPressed: _turnSplashOnOff, child: Text("Flash")),
                    ),
                    Flexible(
                      flex: 1,
                      child: FlatButton(
                          onPressed: _switchCamera, child: Text("Switch")),
                    ),
                  ]),
                  Row(
                    children: [Text(_qrValue)],
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

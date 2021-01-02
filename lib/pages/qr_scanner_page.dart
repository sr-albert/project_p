import 'dart:io';

import "package:flutter/material.dart";
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'package:flutter/foundation.dart';

class QrScannerPage extends StatefulWidget {
  QrScannerPage({Key key}) : super(key: key);

  @override
  _QrScannerPageState createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode result;
  QRViewController controller;

  String _qrValue;

  void _turnSplashOnOff() {
    this.controller.toggleFlash();
  }

  void _switchCamera() {
    this.controller.flipCamera();
  }

  void _onQRViewCreated(QRViewController _qrView) {
    debugPrint("-------- QR VIEW CREATED --------");
    this.controller = _qrView;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    } else if (Platform.isMacOS) {
      debugPrint(" RUNNNING ON MAS OS");
    } else if (Platform.isWindows) {
      debugPrint(" RUNNNING ON WINDOW");
    }
  }

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
                child: _buildQRView(context),
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
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: (result != null)
                          ? Text(
                              'Barcode Type: ${describeEnum(result.format)}   Data: ${result.code}')
                          : Text('Scan a code'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildQRView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;

    // NOTE: Listen flutter Sizechanged notification  and update controller

    return NotificationListener<SizeChangedLayoutNotification>(
      onNotification: (notication) {
        Future.microtask(
            () => controller?.updateDimensions(qrKey, scanArea: scanArea));
        return false;
      },
      child: SizeChangedLayoutNotifier(
        key: const Key("qr-scanner-key"),
        child: QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
            borderColor: Colors.red,
            borderRadius: 10,
            borderLength: 30,
            borderWidth: 10,
            cutOutSize: scanArea,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

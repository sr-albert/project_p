import "package:flutter/material.dart";

class CameraContainer extends StatelessWidget {
  const CameraContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        // TODO: Use flutter scanner package here
        child: Text("Will be display camera here"),
      ),
    );
  }
}
import 'package:flutter/material.dart';

/// This scripts contains reuseable functions
/// show snackbar, alert, etc.
class Scripts {
  showSnackbar(BuildContext context, String message, Function? callBack) {
    final snackbar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}

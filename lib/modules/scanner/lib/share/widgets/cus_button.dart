import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.label,
      this.onPress,
      this.color = Colors.transparent,
      this.border,
      this.labelStyle,
      this.decoration})
      : super(key: key);

  final String label;
  final void Function()? onPress;
  Color? color;
  final BoxBorder? border;
  final TextStyle? labelStyle;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color ?? Colors.transparent,
            elevation: 0.0,
            minimumSize: Size(90, 30),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        onPressed: onPress,
        child: Text(
          label,
          strutStyle: StrutStyle(),
          style: labelStyle ?? TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

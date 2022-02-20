import "package:flutter/material.dart";
import 'package:project_p/modules/scanner/lib/share/theme/theme_constant.dart';
import 'package:project_p/modules/scanner/lib/share/utils/hexcolor.dart';

class CusInputWidget extends StatelessWidget {
  const CusInputWidget(
      {Key? key,
      this.hint,
      required this.label,
      required this.controler,
      this.autovalidateMode,
      this.isPassword = false,
      this.isShowPassword = false,
      this.error = "",
      this.onShowPassword,
      this.onChanged,
      this.validator})
      : super(key: key);

  final String? hint;
  final String label;
  final TextEditingController controler;
  final void Function(String)? onChanged;
  final void Function()? onShowPassword;
  final String? Function(String?)? validator;
  final bool isPassword;
  final AutovalidateMode? autovalidateMode;
  final String? error;
  final bool isShowPassword;

  Color _renderErrorColor() {
    // Return color for error text in case input is password
    switch (error) {
      case "Empty":
        return Colors.red;

      case "Week":
        return Colors.red;

      case "Fair":
        // Color like ogrange
        return HexColor("#E39F63");

      case "Good":
        // Color like green
        return HexColor("#91E2B7");

      case null:
        // Backup in case return null BUT UI still catch as error
        // Maybe never
        return Colors.transparent;

      default:
        // for another error
        return Colors.red;
    }
  }

  _onPressed() {
    onShowPassword!();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          TextFormField(
            controller: controler,
            validator: validator,
            onChanged: onChanged,
            obscureText: isPassword && !isShowPassword,
            autovalidateMode: autovalidateMode,
            style: Theme.of(context).textTheme.bodyText1,
            cursorColor: ThemeConstant.primaryColor,
            decoration: InputDecoration(
                label: Text(label),
                labelStyle: Theme.of(context).textTheme.subtitle2,
                hintStyle: Theme.of(context).textTheme.subtitle2,
                suffixIcon: isPassword
                    ? TextButton(
                        onPressed: _onPressed,
                        child: isShowPassword
                            ? const Icon(Icons.remove_red_eye_outlined)
                            : const Icon(Icons.remove_red_eye))
                    : null,
                border: const UnderlineInputBorder(),
                focusedBorder: ThemeConstant.inputBorder,
                disabledBorder: ThemeConstant.inputBorder,
                enabledBorder: ThemeConstant.inputBorder,
                errorStyle: TextStyle(color: _renderErrorColor()),
                hintText: hint),
          )
        ],
      ),
    );
  }
}

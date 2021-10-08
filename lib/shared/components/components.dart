import 'package:flutter/material.dart';

Widget defaultButton({
  // اذا بعتت بيانات بيتغير اذا ما بعتت بحافظ على البيانات التلقائية
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0,
  required String text,
  required Function function,
}) {
  return Container(
    width: width,
    height: 40.0,
    child: MaterialButton(
      onPressed: () {
        function();
      },
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: background,
    ),
  );
}

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType? type,
  required String? label,
  required IconData prefixIcon,
  Function? onSubmit,
  Function? onChange,
  bool isPassword = false,
  required Function validate,
  IconData? suffix,
  Function? suffixPressed,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: type,
    obscureText: isPassword,
    onFieldSubmitted: (String s) {
      if (onSubmit != null) {
        return onSubmit(s);
      }
    },
    onChanged: (String s) {
      if (onChange != null) {
        return onChange(s);
      }
    },
    validator: (String? value) {
      return validate(value);
    },
    decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(
        prefixIcon,
      ),
      suffixIcon: suffix != null
          ? IconButton(
              onPressed: () {
                suffixPressed!();
              },
              icon: Icon(
                suffix,
              ),
            )
          : null,
      border: OutlineInputBorder(),
    ),
  );
}

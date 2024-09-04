import 'package:flutter/material.dart';

class authTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final String HintText;
  final bool ObsecureText;
  final IconData icondata;
  final double iconsize;

  const authTextField(
      {required this.keyboardType,
      required this.HintText,
      required this.ObsecureText,
      required this.icondata,
      required this.iconsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: TextField(
        keyboardType: keyboardType,
        textAlignVertical: TextAlignVertical.center,
        obscureText: ObsecureText,
        decoration: InputDecoration(
            fillColor: Colors.black26,
            filled: true,
            hintText: HintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintStyle: TextStyle(fontSize: 15),
            prefixIcon: Icon(
              icondata,
              size: iconsize,
            ),
            prefixIconColor: Colors.blue),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextComponent extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();
  
  TextInputType? textInputType;
  String? TextLabel;
  bool? obscureText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;

  CustomTextComponent({this.textInputType, this.TextLabel, this.obscureText, this.suffixIcon, this.prefixIcon, this.hintText});

  @override
  State<CustomTextComponent> createState() => CustomTextState();
}
  
class CustomTextState extends State<CustomTextComponent> {
  @override
  Widget build(BuildContext context){
    return TextFormField(
            cursorColor: Colors.white.withOpacity(0.7),
            keyboardType: widget.textInputType,
            obscureText: widget.obscureText!,
            style: TextStyle(color: Colors.white.withOpacity(0.5)),
            decoration: InputDecoration(
                labelText: widget.TextLabel,
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.2)),
                suffixIcon: widget.suffixIcon,
                prefixIcon: widget.prefixIcon,
                prefixStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                suffixStyle: TextStyle(color: Colors.white),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelAlignment: FloatingLabelAlignment.start, // Label muncul saat input
            filled: true,
            fillColor: Color.fromRGBO(29, 29, 29, 0.6),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
  
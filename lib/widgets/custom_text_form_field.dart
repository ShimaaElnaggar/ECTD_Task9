
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {
        this.suffixIcon,
        required this.obscureText,
        required this.maxLength,
        required this.textInputAction,
        required this.keyboardType,
        required this.label,
        required this.controller,
        super.key
      });

  bool obscureText = false;
  int maxLength ;
  var textInputAction = TextInputAction.next;
  var keyboardType ;
  var label;
  var controller ;
  IconButton? suffixIcon ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
       autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: keyboardType,
        textInputAction:textInputAction,
        maxLength: maxLength,
        autocorrect: true,
        obscureText: obscureText,

        decoration: InputDecoration(
          suffixIcon:suffixIcon,
          label: label,
          // labelStyle: formKey.currentState!.validate () ?
          // TextStyle(color: Colors.blue) :
          // TextStyle(color: Colors.red) ,
        ),
        validator:(value){
          if(value!.isEmpty){
            return " Please enter a valid $label";
          }
          return null;
        },

      ),
    );
  }
}

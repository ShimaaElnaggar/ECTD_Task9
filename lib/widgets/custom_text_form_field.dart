
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  bool obscureText = true;
  var textInputAction = TextInputAction.next;
  var keyboardType ;
  var label;
  var controller ;
  IconButton? suffixIcon ;



  CustomTextFormField(
      {
        this.suffixIcon,
        required this.obscureText,
        required this.textInputAction,
        required this.keyboardType,
        required this.label,
        required this.controller,
        super.key
      });




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        cursorColor: Colors.blue,
       autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: keyboardType,
        textInputAction:textInputAction,
        autocorrect: true,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon:suffixIcon,
          labelText: label,
          // labelStyle: TextStyle(fontSize:18,color: Colors.black38) ,
          floatingLabelStyle: const TextStyle(color: Colors.blue),
          //errorStyle: TextStyle(color: Colors.red),


        ),
        validator:(value){
          if(value!.isEmpty){
            return " Please enter the valid $label ";
          }
          return null;
        },

      ),
    );
  }
}

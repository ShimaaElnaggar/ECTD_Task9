

import 'package:ectd_task9/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
    SignUpView({super.key});

  var emailController = TextEditingController();

  var userNameController = TextEditingController();

  var passwordController = TextEditingController();

  var confirmPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: ListView(
        children: [
          CustomTextFormField(
            obscureText: false,
            maxLength: 25,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            label: const Text("Email"),
            controller: emailController,
          ),
          CustomTextFormField(
            obscureText: false,
            maxLength: 10,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            label: const Text("Username"),
            controller: userNameController,
          ),
          CustomTextFormField(
              obscureText: true,
              maxLength: 10,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              label: const Text("Password"),
              controller: passwordController,
              suffixIcon: IconButton(
                onPressed: () {

                },
                icon:Icon(
                  Icons.visibility_off,
                ) ,
              )
          ),
        ],
      ),
    );
  }
}

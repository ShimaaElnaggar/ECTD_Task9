

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

        ],
      ),
    );
  }
}

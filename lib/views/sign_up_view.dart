import 'package:ectd_task9/views/home_view.dart';
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
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 50,horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Form(
          key: formKey,
          child: ListView(
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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility_off,
                    ),
                  )),
              CustomTextFormField(
                obscureText: true,
                maxLength: 10,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                label: const Text("Confirm Password"),
                controller: confirmPasswordController,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16 ,bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomeView() ),
                                  );
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),

                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

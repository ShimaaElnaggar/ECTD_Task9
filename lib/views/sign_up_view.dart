import 'package:ectd_task9/views/home_view.dart';
import 'package:ectd_task9/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  SignUpView({super.key});
  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool obscurePassword = true;
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
        margin: const EdgeInsets.symmetric(vertical: 55,horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomTextFormField(
                obscureText: false,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                label: "Email",
                controller: emailController,
              ),
              CustomTextFormField(
                obscureText: false,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                label: "Username",
                controller: userNameController,
              ),
              CustomTextFormField(
                  obscureText: obscurePassword,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  label: "Password",
                  controller: passwordController,
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscurePassword = !obscurePassword;
                      setState(() {

                      });
                    },
                    icon:  Icon(
                      obscurePassword
                          ?  Icons.visibility_off
                          :  Icons.visibility,
                    ),
                  )
              ),
              CustomTextFormField(
                obscureText:obscurePassword,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                label: "Confirm Password",
                controller: confirmPasswordController,
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscurePassword = !obscurePassword;
                      setState(() {

                      });
                    },
                    icon:  Icon(
                      obscurePassword
                          ?  Icons.visibility_off
                          :  Icons.visibility,

                    ),
                  )
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
                          fontSize: 22,
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

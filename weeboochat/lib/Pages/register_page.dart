
import 'package:flutter/material.dart';
import 'package:weeboochart/components/my_button.dart';
import 'package:weeboochart/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //textcontroller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final conformpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                //logo
                const Icon(
                  Icons.message,
                  size: 100,
                  color: Color.fromARGB(255, 60, 145, 214),
                ),
                //create account
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 50),

                //email text feild
                MyTextField(
                    controller: emailController,
                    hintText: 'email',
                    obscureText: false),

                const SizedBox(height: 20),

                //passwoed trext fild
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(height: 20),

                MyTextField(
                    controller: conformpasswordController,
                    hintText: 'conform password',
                    obscureText: true),

                const SizedBox(height: 50),

                //sign up
                MyButton(onTap: signUp, text: 'Sign Up'),
                //not member

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Aready Member?"),
                    const SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                      onTap:  widget.onTap,
                      child: const Text(
                        'Login now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp() {
  }
}

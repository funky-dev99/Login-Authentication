import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfeild.dart';
import '../components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void userSignIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email:emailController.text,
        password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                //Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),

                //Welcome Back Text
                const Text(
                  'Welcome back, You\'ve been missed!!',
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
                const SizedBox(
                  height: 25,
                ),

                //Username Text field
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 25,
                ),

                //Password Text field
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                //Forgot?
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Fogot Password?',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ],
                  ),
                ),

                //Sign in Button
                SizedBox(
                  height: 15,
                ),

                MyButton(
                  onTap: userSignIn,
                ),

                //or continue

                Divider(),

                //Google+Apple buttons

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // google button
                    SquareTile(imagePath: 'images/google.png'),

                    SizedBox(width: 25),

                    // apple button
                    SquareTile(imagePath: 'images/apple.png')
                  ],
                ),

                //Register Now

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                    Text(
                      'Register Now!!',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_page/components/button.dart';
import 'package:login_page/components/textfield.dart';
import 'package:login_page/pages/home_page.dart';
import 'package:login_page/pages/registre_page.dart';
import 'package:login_page/pages/testapi.dart';
import '../loginResponse.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({Key? key, required this.onTap}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController(text: 'student@gmail.com');
  final passController = TextEditingController(text: '123456');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Image.asset(
                    'assets/user.png',
                    width: 200.0,
                    height: 200.0,
                  ),

                  const SizedBox(height: 10.0),
                  // Welcome message
                  Text(
                    "Welcome back To TRAINIFY !",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  // Email TextField
              TextFieldCustom(
                    controller: emailController,
                    hinText: 'Email',
                    obscureText: false,
                  ),
                  SizedBox(height: 25.0),
                  // Password TextField
                  TextFieldCustom(
                    controller: passController,
                    hinText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),

                  // Sign In button
                  MyButton(
                    onTap: () async {
                      LoginResponse loginResponse = await loginUser(emailController.text, passController.text);
                      final snackBar = SnackBar(
                        content: Text(loginResponse.message),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      print(loginResponse.error);
                      if (!loginResponse.error) {
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(builder: (context) =>
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }
                    },
                    text: 'Login',
                  ),
                  const SizedBox(height: 25),

                  // Row for Register option
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member ? ",
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterPage(onTap: widget.onTap)), // Pass onTap function to SignInPage
                          );
                        },
                        child: const Text(
                          "Register now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

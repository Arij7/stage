import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/textfield.dart';

class RegisterPage extends StatefulWidget {
  final Function ()? onTap ;
  const RegisterPage({super.key , required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  final emailcontroller =TextEditingController();
  final passcontroller=TextEditingController();
  final confirmpasscontroller=TextEditingController();
  final usernamecontroller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Image.asset('assets/l1.png',
                  width :200.0,
                  height: 200.0,),

                const SizedBox(height: 10.0),
                // welcome message
                Text(
                  "Lest's Create an account for you ! ",style: TextStyle(
                  color: Colors.grey[700],
                ),
                ),

                const SizedBox(height: 30.0),
                // User name
                TextFieldCustom(controller: usernamecontroller,
                  hinText: 'User Name',
                  obscureText: false,
                ),

                const SizedBox(height: 30.0),
                // mail
                TextFieldCustom(controller: emailcontroller,
                  hinText: 'Email',
                  obscureText: false,
                ),
                SizedBox(height: 25.0),
                // password
                TextFieldCustom(controller: passcontroller,
                  hinText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height:10),

                SizedBox(height: 25.0),
                // confirm password
                TextFieldCustom(controller: confirmpasscontroller,
                  hinText: 'Confirm Password',
                  obscureText: true,
                ),
                const SizedBox(height:10),

                //sign in button
                MyButton(
                    onTap: (){},
                    text: 'Sign Un'),
                const SizedBox(height: 25),
                //go to registre page
                Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text("Already have an account !  ",
                      style:TextStyle(
                        color: Colors.grey[700],
                      ) ,
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child:const Text(
                        "Login now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Colors.blue ,
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
    );
  }


}
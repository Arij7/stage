import 'package:flutter/material.dart';


class TextFieldCustom extends StatelessWidget{
  final TextEditingController controller ;
  final String hinText ;
  final bool obscureText ; 
  
  const TextFieldCustom ({super.key,
    required this.controller,
    required this.hinText ,
    required this.obscureText });

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: obscureText,
        decoration : InputDecoration (
          enabledBorder: const OutlineInputBorder(
            borderSide:  BorderSide(color :Colors.deepPurpleAccent),
          ),
          focusedBorder:  const OutlineInputBorder(
            borderSide: BorderSide( color :Colors.deepPurpleAccent)
        ),
          fillColor: Colors.grey.shade200 ,
          filled :true,
          hintText: hinText ,
          hintStyle: TextStyle (color:Colors.grey.shade500),
        ),
    );
  }
  



}
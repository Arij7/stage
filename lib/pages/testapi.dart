import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_page/components/button.dart';
import 'package:login_page/components/textfield.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';

import 'package:login_page/loginResponse.dart'; // for json decoding



Future<LoginResponse> loginUser(String username, String password) async {
  final response = await http.post(
    Uri.parse('https://beautycity.tn/api/auth/login'),
    body: jsonEncode({'email': username, 'password': password}),
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    // Successful login
    final responseData = json.decode(response.body);
    String token = responseData['token'];
    final loginResponse = LoginResponse(error: responseData['error'],message: responseData['message'],token: responseData['token']);
    return loginResponse;
  } else {
    final responseData = json.decode(response.body);
    final loginResponse = LoginResponse(error: true,message: responseData['message'],token: 'null');
    return loginResponse;
  }
}

import 'package:login_page/loginResponse.dart'; // for json decoding



Future<RegisterResponse> registerUser(String firstname, String lastname,String password ,) async {
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
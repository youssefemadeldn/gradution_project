import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_text_form_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// Assuming you're using some spinner for the loading state
// Assuming you're using this for the loading overlay

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email, password;
  String _errorMessage = '';
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  Future<void> _login() async {
    // if (email != null &&
    //     email!.isNotEmpty &&
    //     password != null &&
    //     password!.isNotEmpty) {
    //   setState(() {
    //     isLoading = true;
    //   });

    //   try {
    //     final response = await http.post(
    //       Uri.parse(
    //           'https://16d7-41-233-190-7.ngrok-free.app/api/auth/loginstudent'),
    //       // 122144455610
    //       headers: <String, String>{
    //         'Content-Type': 'application/json; charset=UTF-8',
    //       },
    //       body: jsonEncode(<String, String>{
    //         'account': email!,
    //         'password': password!,
    //       }),
    //     );

    //     // Print request and response for debugging
    //     print('Request: ${jsonEncode(<String, String>{
    //           'account': email!,
    //           'password': password!
    //         })}');
    //     print('Response status: ${response.statusCode}');
    //     print('Response body: ${response.body}');

    //     if (response.statusCode == 200) {
    //       var data = jsonDecode(response.body);
    //       SharedPreferences prefs = await SharedPreferences.getInstance();
    //       await prefs.setString('access_token', data['access_token']);
    //       await prefs.setString('login_type', data['login_type']);

    // Navigate to the next screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              MyNavigationBar()), // Assuming MyNavigationBar is your home screen
    );
    //     } else {
    //       setState(() {
    //         _errorMessage = 'Failed to login: ${response.body}';
    //       });
    //     }
    //   } catch (e) {
    //     setState(() {
    //       _errorMessage = 'Failed to connect to the server';
    //     });
    //   } finally {
    //     setState(() {
    //       isLoading = false;
    //     });
    //   }
    // } else {
    //   setState(() {
    //     _errorMessage = 'Email and password cannot be empty';
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      color: Colors.black,
      blur: 5,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 75,
                ),
                Image.asset(
                  kLogo,
                  height: 100,
                ),
                const Center(
                  child: Text(
                    kAppName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 175,
                ),
                const Row(
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  onChanged: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  obscure: true,
                  onChanged: (data) {
                    password = data;
                  },
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onTap: _login,
                  text: 'LOGIN',
                  color: Colors.white,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 10,
                ),
                if (_errorMessage.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      _errorMessage,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

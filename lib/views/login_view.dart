import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widgets/custom_button.dart';
import 'package:flutter_application_1/views/register_view.dart';
import 'package:flutter_application_1/widgets/custom_text_form_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email, password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

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
                const CustomButton(
                  // onTap: () async {
                  //   if (formKey.currentState!.validate()) {
                  //     isLoading = true;
                  //     setState(() {});
                  //     try {
                  //       await signUser();
                  //       Navigator.pushNamed(context, ChatPage.id,
                  //           // to send email from login page to chat page \/
                  //           arguments: email);
                  //     } on FirebaseAuthException catch (e) {
                  //       if (e.code == 'user-not-found') {
                  //         showSnackBar(
                  //             context, 'No user found for that email.');
                  //       } else if (e.code == 'wrong-password') {
                  //         showSnackBar(context,
                  //             'Wrong password provided for that user.');
                  //       }
                  //     } catch (e) {
                  //       showSnackBar(context,
                  //           'Ooops there was an error, try again later');
                  //     }
                  //     isLoading = false;
                  //     setState(() {});
                  //   }
                  // },
                  text: 'LOGIN', color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'dont\'t have an acount? ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0XFFC7EDE6),
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

  // Future<void> signUser() async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   UserCredential user = await auth.signInWithEmailAndPassword(
  //       email: email!, password: password!);
  // }
}

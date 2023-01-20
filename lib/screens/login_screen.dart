import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/widgets/roundbotton.dart';
import 'package:login_ui/widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Hello Again!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Welcome back,we had',
                    style: TextStyle(fontSize: 15),
                  ),
                  const Text(
                    'missed you a lot!',
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  //email
                  const Textfield(
                    hintText: 'Email address',
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //password
                  const Textfield(
                    hintText: 'Password',
                    pass: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //password recovery
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Password recovery?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //botton
                  const RoundBotton(
                    bottonname: 'Login',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // or continue with

                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          indent: 30,
                          endIndent: 10,
                          color: Colors.grey,
                        ),
                      ),
                      Center(
                        child: Text('or continue with'),
                      ),
                      Expanded(
                        child: Divider(
                          indent: 10,
                          endIndent: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Center(
                            child: CachedNetworkImage(
                              imageUrl:
                                  "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Center(
                            child: CachedNetworkImage(
                              imageUrl:
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
                              width: 25.0,
                              height: 25.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 90,
                  ),

                  //register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Not a member?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Register now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
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
/*
Row(
                  children: [
                    Divider(
                      thickness: 12,
                      color: Colors.red,
                      height:10,
                      indent: 50,
                      endIndent: 50,
                    ),
                  ],
                ),
*/
import 'package:flutter/material.dart';
import 'package:logistics/widgets/button.dart';
import 'package:logistics/widgets/links.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);
  static const RouteName = '/login';
  final Color _gray = const Color.fromRGBO(79, 79, 79, 1);

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context);

    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Image.asset('assets/logo.png'),
                    margin: EdgeInsets.only(top: 70),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 15,
                  ),
                  Text(
                    'Login To Your Rider Account',
                    style: TextStyle(
                      fontSize: 20,
                      color: _gray,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Email Address',
                          style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1)),
                        ),
                        const SizedBox(height: 5),
                        TextFormField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            constraints: const BoxConstraints(
                                maxHeight: 55, maxWidth: 368),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text('Password',
                            style: TextStyle(
                                color: Color.fromRGBO(130, 130, 130, 1))),
                        const SizedBox(height: 5),
                        TextFormField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            constraints: const BoxConstraints(
                                maxHeight: 55, maxWidth: 368),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                          width: _media.size.width * .9,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 20),
                    child: Button(
                        label: 'LOGIN',
                        height: 55,
                        width: 400,
                        function: () {}),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('New to Kaxze'),
                      const SizedBox(width: 13),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Text(
                          'CREATE AN ACCOUNT',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: _media.size.width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: _gray,
                          height: 1,
                          width: _media.size.width * .4,
                        ),
                        const Text('OR'),
                        Container(
                          color: _gray,
                          height: 1,
                          width: _media.size.width * .4,
                        ),
                      ],
                    ),
                  ),
                  const Links(
                      label: 'Continue with Facebook',
                      linkIcons: 'assets/Path.png',
                      color: Colors.blue),
                  const SizedBox(height: 20),
                  const Links(
                      label: 'Continue with Google   ',
                      linkIcons: 'assets/Path.png',
                      color: Colors.red),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:logistics/screens/available_orders.dart';
import 'package:logistics/screens/log_in.dart';
import 'package:logistics/screens/orders.dart';
import 'package:logistics/widgets/button.dart';

enum Gender { male, female }

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

// add controllers for validation
class _CreateAccountState extends State<CreateAccount> {
  final Color _gray = const Color.fromRGBO(79, 79, 79, 1);
  Gender? _gender = Gender.male;
  bool _hidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/logo.png'),
                  margin: const EdgeInsets.only(top: 70),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 15,
                ),
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 20,
                    color: _gray,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'First Name',
                        style:
                            TextStyle(color: Color.fromRGBO(130, 130, 130, 1)),
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
                      const Text('Last Name',
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
                    ],
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: Gender.male,
                      groupValue: _gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                      activeColor: const Color.fromRGBO(235, 87, 87, 1),
                    ),
                    Text(
                      'Male',
                      style: TextStyle(color: _gray, fontSize: 19),
                    ),

                    //
                    const SizedBox(width: 10),
                    Radio(
                      value: Gender.female,
                      groupValue: _gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                      activeColor: const Color.fromRGBO(235, 87, 87, 1),
                    ),
                    Text(
                      'Female',
                      style: TextStyle(color: _gray, fontSize: 19),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Email Address',
                        style:
                            TextStyle(color: Color.fromRGBO(130, 130, 130, 1))),
                    const SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        constraints:
                            const BoxConstraints(maxHeight: 55, maxWidth: 368),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text('Phone number',
                        style:
                            TextStyle(color: Color.fromRGBO(130, 130, 130, 1))),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        shape: BoxShape.rectangle,
                      ),
                      child: InternationalPhoneNumberInput(
                        inputDecoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(1))),
                        onInputChanged: (a) {},
                        spaceBetweenSelectorAndTextField: 0,
                      ),
                    ),
                    const Text('Password',
                        style:
                            TextStyle(color: Color.fromRGBO(130, 130, 130, 1))),
                    const SizedBox(height: 5),
                    TextFormField(
                      obscureText: _hidden,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _hidden = !_hidden;
                            });
                          },
                          icon: _hidden
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        constraints:
                            const BoxConstraints(maxHeight: 55, maxWidth: 368),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Button(
                    label: 'CREATE',
                    height: 50,
                    width: 300,
                    function: () {
                      setState(() {
                        Navigator.pushReplacementNamed(
                            context, AvailableOrders.RouteName);
                      });
                    }),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account? '),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, LogIn.RouteName),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    )
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

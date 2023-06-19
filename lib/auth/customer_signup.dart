// ignore_for_file: avoid_print, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:multistore_firebase/presentation/components/auth_widget.dart';
import 'package:multistore_firebase/presentation/components/snackbar.dart';

// final TextEditingController _nameController = TextEditingController();
// final TextEditingController _emailController = TextEditingController();
// final TextEditingController _passwordController = TextEditingController();

class CustomerRegister extends StatefulWidget {
  const CustomerRegister({super.key});

  @override
  State<CustomerRegister> createState() => _CustomerRegisterState();
}

class _CustomerRegisterState extends State<CustomerRegister> {
 
  late String name;
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldKey,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              reverse: true,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const AuthHeaderLabel(
                        headerLabel: 'Sign Up',
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.purpleAccent,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15))),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    print('pick image from camera');
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.photo,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    print('pick image from gallery');
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your full name ';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                          },
                          //   controller: _nameController,
                          decoration: texFormDecoration.copyWith(
                              labelText: 'Full Name',
                              hintText: 'Enter your full name '),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your email Adress';
                            } else if (value.isValidEmail() == false) {
                              return 'invalid email';
                            } else if (value.isValidEmail() == true) {
                              return null;
                            }
                            return null;
                          },
                          onChanged: (value) {
                            email = value;
                          },
                          //  controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: texFormDecoration.copyWith(
                              labelText: 'Email Address',
                              hintText: 'Enter your email address '),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your password ';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            password = value;
                          },
                          //  controller: _passwordController,
                          obscureText: passwordVisible,
                          decoration: texFormDecoration.copyWith(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible = !passwordVisible;
                                    });
                                  },
                                  icon: Icon(
                                    passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.purple,
                                  )),
                              labelText: 'Password',
                              hintText: 'Enter your pasword'),
                        ),
                      ),
                      HaveAccount(
                        haveAccount: 'already have account',
                        actionLabel: 'Log In',
                        onPressed: () {},
                      ),
                      AuthMainButton(
                        mainButtonLabel: 'Sign Up',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('valid');
                            // setState(() {
                            //   name = _nameController.text;
                            //   email = _emailController.text;
                            //   password = _passwordController.text;
                            // });
                            print(name);
                            print(email);
                            print(password);
                          } else {
                           MyMessageHandler. showSnackBar(_scaffoldKey,'please fill all field');
                            // ScaffoldMessenger.of(context)
                            //     .showSnackBar(const SnackBar(
                            //         duration: Duration(seconds: 2),
                            //         backgroundColor: Colors.yellow,
                            //         content: Text(
                            //           'please fill all fields',
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               fontSize: 18, color: Colors.black),
                            //         )));
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



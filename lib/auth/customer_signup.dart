import 'package:duck_store/widget/auth_widget.dart';
import 'package:flutter/material.dart';

// final TextEditingController _namecontroller = TextEditingController();
// final TextEditingController _emailcontroller = TextEditingController();
// final TextEditingController _passwordcontroller = TextEditingController();

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
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AuthHeaderLabel(
                      headerLabel: 'Sign Up',
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.purpleAccent,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    print("pickImage from Camera");
                                  },
                                  icon: Icon(Icons.camera_alt)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    print("pickImage from Gallery");
                                  },
                                  icon: Icon(Icons.photo)),
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
                            return 'please Enter your Full Name';
                          }
                        },
                        decoration: textFormDecoration.copyWith(
                          labelText: 'Full Name',
                          hintText: 'Enter your Full Name',
                        ),
                        onChanged: (value) {
                          name = value;
                        },
                        //controller: _namecontroller,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please Enter your Email';
                          } else if (value.isValidEmail() == false) {
                            return 'invalid email';
                          } else if (value.isValidEmail() == true) {
                            return null;
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: textFormDecoration.copyWith(
                          labelText: 'Email Address',
                          hintText: 'Enter your Email',
                        ),
                        //controller: _emailcontroller,
                        onChanged: (value) {
                          email = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please Enter Password';
                          }
                        },
                        obscureText: passwordVisible,
                        decoration: textFormDecoration.copyWith(
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
                          hintText: 'Enter your Password',
                        ),
                        // controller: _passwordcontroller,
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                    ),
                    HaveAccount(
                      actionLabel: 'Log In',
                      haveAccount: 'already have account? ',
                      onPressed: () {},
                    ),
                    AuthMainButton(
                      mainButtonLabel: 'Sign Up',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('valid');
                          // setState(() {
                          //   name = _namecontroller.text;
                          //   email = _emailcontroller.text;
                          //   password = _passwordcontroller.text;
                          // });

                          print(name);
                          print(email);
                          print(password);
                        } else {
                          print('not valid');
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
    );
  }
}

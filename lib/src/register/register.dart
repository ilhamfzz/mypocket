import 'package:eas_ppb/src/home/home.dart';
import 'package:eas_ppb/src/login/login.dart';
import 'package:flutter/material.dart';
import 'package:eas_ppb/src/styles/styles.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  static const String routeName = "/register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late final GlobalKey<FormState> _formKey;

  late final TextEditingController _usernameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();

    _formKey = GlobalKey<FormState>();

    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // text login section
                  const Text(
                    "Register",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),

                  // text title section
                  const Text(
                    "Create Your Account",
                    style: TextStyle(fontSize: 32),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),

                  // text subtitle section
                  const Text(
                    "Please register below",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),

                  // form section
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // textfield username
                        TextFormField(
                          controller: _usernameController,
                          keyboardType: TextInputType.text,
                          decoration: Styles.textFieldAuth.copyWith(
                            label: const Text('Username'),
                          ),
                          // validator: (value) => value
                          //         .toString()
                          //         .isValidUsername()
                          //     ? null
                          //     : "Must be between 8 and 16 alphanumeric characters",
                        ),
                        const SizedBox(height: 20),

                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: Styles.textFieldAuth.copyWith(
                            label: const Text('Email'),
                          ),
                          // validator: (value) => value.toString().isValidEmail()
                          //     ? null
                          //     : 'Must be at least 8 characters & valid email',
                        ),
                        const SizedBox(height: 15),

                        // textfield password
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: _obscureText,
                          decoration: Styles.textFieldAuth.copyWith(
                            label: const Text('Password'),
                            suffixIcon: IconButton(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              splashRadius: 24,
                              onPressed: _togglePasswordVisibility,
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Styles.colorBlack400,
                              ),
                            ),
                          ),
                          // validator: (value) =>
                          // value.toString().isValidPassword()
                          //     ? null
                          //     : "Must be at least 8 characters",
                        ),

                        //  end form section
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // button register section
                  ElevatedButton(
                    onPressed: () {
                      if (_usernameController.text.isNotEmpty &&
                          _emailController.text.isNotEmpty &&
                          _passwordController.text.isNotEmpty) {
                        Navigator.pushNamed(context, Home.routeName);
                      }
                    },
                    style: Styles.primaryButton.copyWith(
                      minimumSize: const WidgetStatePropertyAll(
                        Size.fromHeight(44),
                      ),
                    ),
                    child: const Text("Register"),
                  ),
                  const SizedBox(height: 32),

                  // link to register
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Have an account? ",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Login.routeName);
                        },
                        child: const Text(
                          "Login here",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),

                  // end section
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

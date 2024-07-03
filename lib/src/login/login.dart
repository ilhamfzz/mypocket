import 'package:eas_ppb/src/home/home.dart';
import 'package:eas_ppb/src/register/register.dart';
import 'package:flutter/material.dart';
import 'package:eas_ppb/src/styles/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  static const String routeName = "/login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late final GlobalKey<FormState> _formKey;

  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();

    _formKey = GlobalKey<FormState>();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

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
                    "Login",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),

                  // text title section
                  const Text(
                    "Welcome",
                    style: TextStyle(fontSize: 32),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),

                  // text subtitle section
                  const Text(
                    "Please enter your account here",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),

                  // form section
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // textfield email
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
                        const SizedBox(height: 20),

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
                          //     value.toString().isValidPassword()
                          //         ? null
                          //         : "Must be at least 8 characters",
                        ),
                        //  end form section
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // link to forgot password
                  InkWell(
                    onTap: () {},
                    // onTap: () => Navigator.pushNamed(
                    //   context,
                    //   ForgotPasswordView.routeName,
                    // ),
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // button login section
                  ElevatedButton(
                    onPressed: () {
                      if (_emailController.text.isNotEmpty &&
                          _passwordController.text.isNotEmpty) {
                        Navigator.pushNamed(context, Home.routeName);
                      }
                    },
                    style: Styles.primaryButton.copyWith(
                      minimumSize: const WidgetStatePropertyAll(
                        Size.fromHeight(44),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Styles.colorWhite,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  // link to register
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't you have an account? ",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Register.routeName);
                        },
                        child: Text(
                          "Register here",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
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

import 'package:flutter/material.dart';
import 'package:eas_ppb/src/styles/styles.dart';
// import 'package:flutter_loyalty_point/src/view_models/onboarding/onboarding_view_model.dart';
// import 'package:provider/provider.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  static const String routeName = "/onboarding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background section
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/background_splash.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // gradient section
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
          ),

          // content section
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // jokomart logo
                  Image.asset(
                    "assets/images/logo_onboarding.png",
                    width: 125,
                  ),
                  const SizedBox(height: 180),

                  // text
                  const Text(
                    "Start paying for your purchases with the Pocket\napplication and get your credits or data quota\nto access all over the world",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),

                  // button login section
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
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
                  const SizedBox(height: 10),

                  // button register section
                  ElevatedButton(
                    onPressed: () {},
                    style: Styles.secondaryButton.copyWith(
                      minimumSize: const WidgetStatePropertyAll(
                        Size.fromHeight(44),
                      ),
                    ),
                    child: const Text("Register"),
                  ),
                  // end section
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:eas_ppb/src/history/history.dart';
import 'package:eas_ppb/src/home/home.dart';
import 'package:eas_ppb/src/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eas_ppb/src/styles/styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eas_ppb/src/splash/splash.dart';
import 'package:eas_ppb/src/login/login.dart';
import 'package:eas_ppb/src/register/register.dart';
import 'package:eas_ppb/src/onboarding/onboarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      initialRoute: Splash.routeName,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Styles.colorBlack400,
          ),
        ),
        canvasColor: Styles.colorBackground,
        scaffoldBackgroundColor: Styles.colorBackground,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Styles.colorWhite,
          foregroundColor: Styles.colorBlack400,
          elevation: 1,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Styles.colorBlack400,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Styles.colorBlack500,
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Styles.colorBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25),
            ),
          ),
        ),
      ),
      routes: {
        '/': (context) => const Splash(),
        '/onboarding': (context) => const Onboarding(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
        '/history': (context) => const History(),
        '/profile': (context) => const Profile(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

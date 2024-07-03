import 'package:eas_ppb/src/login/login.dart';
import 'package:flutter/material.dart';
import 'package:eas_ppb/src/styles/styles.dart';
import 'package:eas_ppb/src/navbar/navbar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  static const routeName = "/profile";
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const BottomNavWidget(
        routeName: Profile.routeName,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        title: Text(
          "Pocketers!",
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Styles.colorGreen900),
        ),
        titleSpacing: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Styles.colorGreen500,
                borderRadius: BorderRadius.circular(100),
              ),
              width: 100,
              height: 100,
              child: const Center(
                  child: Text(
                "F",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "ilhamfzz",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Styles.colorGreen900),
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                          ),
                        ]),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: const Color(0xffE0ECE0),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.person,
                                color: Styles.colorGreen800,
                                size: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "My Profile",
                              style: GoogleFonts.poppins(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Icon(Icons.keyboard_arrow_right_outlined)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                          ),
                        ]),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/faq_logo.png",
                              width: 26,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "FAQs",
                              style: GoogleFonts.poppins(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Icon(Icons.keyboard_arrow_right_outlined)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                          ),
                        ]),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/terms_logo.png",
                              width: 26,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Terms & Conditions",
                              style: GoogleFonts.poppins(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Icon(Icons.keyboard_arrow_right_outlined)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                          ),
                        ]),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/privacy_icon.png",
                              width: 26,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Privacy Policy",
                              style: GoogleFonts.poppins(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Icon(Icons.keyboard_arrow_right_outlined)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                          ),
                        ]),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/settings_icon.png",
                              width: 26,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Settings",
                              style: GoogleFonts.poppins(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Icon(Icons.keyboard_arrow_right_outlined)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                ElevatedButton(
                  style: Styles.secondaryButton.copyWith(
                    backgroundColor: const WidgetStatePropertyAll(
                      Colors.white,
                    ),
                    elevation: const WidgetStatePropertyAll(0),
                  ),
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          titlePadding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 30, right: 30),
                          contentPadding: const EdgeInsets.only(
                              bottom: 13, left: 30, right: 30),
                          title: const Text(
                            'Log Out?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 18),
                          ),
                          content: const Text(
                            "Are you sure want to logout?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, color: Styles.colorBlack300),
                          ),
                          actions: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 10,
                                    ),
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                      side: const BorderSide(
                                          color: Styles.colorGreen500),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: GoogleFonts.poppins(
                                        color: Styles.colorGreen500,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                ElevatedButton(
                                  style: Styles.primaryButton,
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, Login.routeName);
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: Text('Log Out',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.logout,
                        size: 24,
                        color: Styles.colorBlack400,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Log Out",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Styles.colorBlack400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

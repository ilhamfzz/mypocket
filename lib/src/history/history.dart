import 'package:eas_ppb/src/home/home.dart';
import 'package:eas_ppb/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class History extends StatefulWidget {
  const History({super.key});

  static const String routeName = "/history";

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Styles.colorBackground,
      child: Center(
        child: Image(
          image: const AssetImage("assets/images/no_transaction_history.png"),
          width: MediaQuery.of(context).size.width * 0.95,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

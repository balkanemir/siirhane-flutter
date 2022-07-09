import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siirhane/routes/welcome.dart';
import 'package:siirhane/utils/colors.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  static const String routeName = '/intro';

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 4);
    return Timer(
        duration,
        () => Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Welcome(),
                transitionDuration: const Duration(milliseconds: 500),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                      opacity: animation, child: const Welcome());
                },
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
            child: Text('Şiirhane',
                style: GoogleFonts.allison(
                  color: backgroundWhite,
                  fontSize: 80.0,
                ))));
  }
}

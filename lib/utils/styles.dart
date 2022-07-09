import 'package:flutter/material.dart';
import 'package:siirhane/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

final buttonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(primaryPurple),
    textStyle: MaterialStateProperty.all(
        GoogleFonts.livvic(color: backgroundBlack, fontSize: 20.0)),
    splashFactory: NoSplash.splashFactory,
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    )));

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siirhane/routes/signIn.dart';
import 'package:siirhane/utils/colors.dart';
import 'package:siirhane/utils/screensizes.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  static const String routeName = '/Welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Center(
            child: Text('Şiirhane',
                style: GoogleFonts.allison(
                  color: Theme.of(context).primaryColor,
                  fontSize: 80.0,
                ))),
        Column(children: [
          Stack(children: [
            Container(
              height: 42,
              width: screenWidth(context, dividedBy: 2),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: const Text('Giriş Yap'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor),
                    textStyle: MaterialStateProperty.all(GoogleFonts.livvic(
                        color: backgroundBlack, fontSize: 20.0)),
                    shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                      BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(10)),
              ),
            ),
            const SizedBox(height: 70)
          ]),
          const SizedBox(height: 20),
          Stack(children: [
            Container(
              height: 42,
              width: screenWidth(context, dividedBy: 2),
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Kayıt Ol'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      textStyle: MaterialStateProperty.all(GoogleFonts.livvic(
                          color: backgroundBlack, fontSize: 20.0)),
                      shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                          BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                      elevation: MaterialStateProperty.all(10))),
            ),
            const SizedBox(height: 70)
          ])
        ]),
      ]),
    );
  }
}

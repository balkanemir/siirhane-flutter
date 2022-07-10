import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siirhane/routes/signUp.dart';
import 'package:siirhane/utils/colors.dart';
import 'package:siirhane/utils/dimensions.dart';
import 'package:siirhane/utils/screensizes.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  static const String routeName = '/signIn';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Center(
          child: Container(
        height: screenHeight(context, dividedBy: 3),
        child: Center(
          child: Text('Şiirhane.',
              style: GoogleFonts.allison(
                color: Theme.of(context).primaryColor,
                fontSize: 80.0,
              )),
        ),
      )),
      Form(
          key: _formKey,
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(Dimension.regularMargin),
              child: Text("Giriş Yap.",
                  style: GoogleFonts.livvic(
                      color: backgroundBlack, fontSize: 20.0)),
            ),
            Container(
                margin: EdgeInsets.all(Dimension.regularMargin),
                width: 260,
                height: 42,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() => email = value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Container(
                        width: 80,
                        child: Row(children: [
                          const Icon(Icons.email, color: Colors.grey),
                          const SizedBox(width: 4),
                          const Text('Email.',
                              style: TextStyle(color: Colors.grey))
                        ])),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.all(Dimension.regularMargin),
                width: 260,
                height: 42,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() => password = value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Container(
                        width: 80,
                        child: Row(children: [
                          const Icon(Icons.password, color: Colors.grey),
                          const SizedBox(width: 4),
                          const Text('Şifre.',
                              style: TextStyle(color: Colors.grey)),
                        ])),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                ))
          ])),
      Container(
        margin: EdgeInsets.only(top: screenHeight(context, dividedBy: 6)),
        child: Stack(children: [
          Container(
            height: 42,
            width: screenWidth(context, dividedBy: 2),
            child: ElevatedButton(
                onPressed: () {
                  // go to main page
                },
                child: const Text('Giriş Yap.'),
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
        ]),
      ),
        TextButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
      }, child: Text('Hesabın yok mu? Kayıt ol.'))
    ]));
  }
}

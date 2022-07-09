import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:siirhane/routes/intro.dart';
import 'package:siirhane/routes/signIn.dart';
import 'package:siirhane/routes/welcome.dart';
import 'package:siirhane/utils/themes.dart';

void main() {
  runApp(Siirhane());
}

class Siirhane extends StatelessWidget {
  const Siirhane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          themeMode: themeProvider.themeMode,
            theme: Themes.lightTheme,
            darkTheme: Themes.darkTheme,
            home: Intro(),
            routes: {
              Intro.routeName: (context) => Intro(),
              Welcome.routeName: (context) => Welcome(),
              SignIn.routeName: (context) => SignIn()
            });
      });
}
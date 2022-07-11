import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siirhane/ui/navBar.dart';
import 'package:siirhane/ui/postCard.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const String routeName = '/mainpage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text('Şiirhane.',
          style: GoogleFonts.allison(
            color: Theme.of(context).primaryColor,
            fontSize: 30.0,
          )),
      elevation: 0,
    ),
    body: ListView(children: [PostCard(), PostCard()]));
  }
}

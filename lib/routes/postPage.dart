import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siirhane/ui/commentCard.dart';
import 'package:siirhane/ui/navBar.dart';
import 'package:siirhane/ui/postCard.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  static const String routeName = '/PostPage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<PostPage> {
  final _formKey = GlobalKey<FormState>();
  String comment = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Şiir.',
              style: GoogleFonts.livvic(
                color: Theme.of(context).primaryColor,
                fontSize: 20.0,
              )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).canvasColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
        ),
        body: ListView(children: [
          PostCard(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Yorumlar.',
                style: GoogleFonts.livvic(
                  color: Theme.of(context).canvasColor,
                  fontSize: 20.0,
                )),
          ),
          SizedBox(height: 20),
          CommentCard(),
          CommentCard(),
          CommentCard(),
          CommentCard(),
          CommentCard(),
          CommentCard()
        ]),
        bottomSheet: Form(
            child: Container(
                height: 120,
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    autofocus: true,
                    style: TextStyle(color: Theme.of(context).canvasColor),
                    onChanged: (value) => setState(() => comment = value),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.comment),
                      hintText: 'Yorum yaz.',
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
                  ),
                ))));
  }
}

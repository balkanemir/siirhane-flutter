import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siirhane/utils/colors.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName:  Text('Emir Balkan',
                        style: GoogleFonts.livvic(
                            color: backgroundWhite, fontSize: 14.0, fontWeight: FontWeight.bold)),
            accountEmail: Text('emir_balkan@hotmail.com',
                        style: GoogleFonts.livvic(
                            color: backgroundWhite, fontSize: 14.0)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://www.nicepng.com/png/detail/7-77391_businessman-transparent-business-man-png.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1544954617-f5c6b0d16164?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFuZHNjYXBlJTIwcGhvdG9ncmFwaHl8ZW58MHx8MHx8&w=1000&q=80')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Theme.of(context).canvasColor),
            title:  Text('Profil',
                        style: GoogleFonts.livvic(
                            color: Theme.of(context).canvasColor, fontSize: 14.0)),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings, color: Theme.of(context).canvasColor),
            title:  Text('Ayarlar',
                        style: GoogleFonts.livvic(
                            color: Theme.of(context).canvasColor, fontSize: 14.0)),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Theme.of(context).canvasColor),
            title:  Text('Çıkış Yap',
                        style: GoogleFonts.livvic(
                            color: Theme.of(context).canvasColor, fontSize: 14.0)),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
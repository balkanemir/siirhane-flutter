import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siirhane/utils/colors.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 5,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName:  Text('Emir Balkan',
                        style: GoogleFonts.livvic(
                            color: Theme.of(context).canvasColor, fontSize: 14.0, fontWeight: FontWeight.bold)),
            accountEmail: Text('emir_balkan@hotmail.com',
                        style: GoogleFonts.livvic(
                            color: Theme.of(context).canvasColor, fontSize: 14.0)),
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
              color: Theme.of(context).scaffoldBackgroundColor,
              
            ),
          ),
          ListTile(
            tileColor: Theme.of(context).primaryColor,
            leading: Icon(Icons.person, color: backgroundWhite),
            title:  Text('Profil',
                        style: GoogleFonts.livvic(
                            color: backgroundWhite, fontSize: 14.0)),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            tileColor: Theme.of(context).primaryColor,
            leading: Icon(Icons.settings, color: backgroundWhite),
            title:  Text('Ayarlar',
                        style: GoogleFonts.livvic(
                            color: backgroundWhite, fontSize: 14.0)),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            tileColor: Theme.of(context).primaryColor,
            leading: Icon(Icons.exit_to_app, color: backgroundWhite),
            title:  Text('Çıkış Yap',
                        style: GoogleFonts.livvic(
                            color: backgroundWhite, fontSize: 14.0)),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
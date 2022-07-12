import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siirhane/routes/postPage.dart';
import 'package:siirhane/ui/likeButton.dart';
import 'package:siirhane/utils/dimensions.dart';
import 'package:siirhane/utils/screensizes.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => PostPage()));
      },
      child: Flexible(
        child: Container(
            width: screenWidth(context),
            //height: screenHeight(context, dividedBy: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                margin: EdgeInsets.only(top: Dimension.regularMargin),
                child: Row(children: [
                  Row(children: [
                    SizedBox(width: 10),
                    CircleAvatar(child: ClipOval(
                  child: Image.network(
                    'https://www.nicepng.com/png/detail/7-77391_businessman-transparent-business-man-png.png', fit: BoxFit.cover,
                    width: 90,
                    height: 90,)),),
                    SizedBox(width: 10),
                    Column(children: [
                      Text('Emir Balkan',
                          style: GoogleFonts.livvic(
                              color: Theme.of(context).canvasColor, fontSize: 12.0)),
                      Text('@balkanemir',
                          style: GoogleFonts.livvic(
                              color: Colors.grey, fontSize: 12.0))
                    ]),
                  ]),
                  SizedBox(width: screenWidth(context, dividedBy: 2.5)),
                  Text('09/09/2022.',
                      style: GoogleFonts.livvic(
                          color: Colors.grey, fontSize: 12.0))
                ]),
              ),
              SizedBox(height: 10),
              Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: Dimension.parentMargin),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Başlık',
                            style: GoogleFonts.livvic(
                                color: Theme.of(context).canvasColor, fontSize: 20.0, fontWeight: FontWeight.w600),),
                        Text(
                            'Bir yol \nBir yola,  \nYollar insana ulaşıyorsa  \nBizim...Göz, \nGördüğünü yüreğe,',
                            style: GoogleFonts.livvic(
                                color: Theme.of(context).canvasColor, fontSize: 14.0)),
                        SizedBox(height: 10)
                      ])),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          like_button(),
                          Row(
                            children: [
                              IconButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage()));
                              }, icon: Icon(Icons.comment, color: Colors.grey, size: 18.0)),
                              Text('Yorum Yap.',
                            style: GoogleFonts.livvic(
                                color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w600),),
                            ],
                          )
                        ]
                      ),
                      SizedBox(height: 10)
            ])),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

class like_button extends StatefulWidget {
  const like_button({ Key? key }) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<like_button> {
  @override
  Widget build(BuildContext context) {
    return  LikeButton(
          size: 20,
          circleColor:
              CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Color(0xff33b5e5),
            dotSecondaryColor: Color(0xff0099cc),
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.favorite,
              color: isLiked ? Theme.of(context).primaryColor : Colors.grey,
              size: 20,
            );
          },
          likeCount: 0,
          countBuilder: (int? count, bool isLiked, String text) {
            var color = isLiked ? Theme.of(context).primaryColor  : Colors.grey;
            Widget result;
            if (count == 0) {
              result =  Text('  Beğen.',
                            style: GoogleFonts.livvic(
                                color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w600),);
            } else
              result = Text(
                text,
                style: TextStyle(color: color),
              );
            return result;
          },
        );
  }
}
  Future<bool> onLikeButtonTapped(bool isLiked) async{
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;

    return !isLiked;
  }
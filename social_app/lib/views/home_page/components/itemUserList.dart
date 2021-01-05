import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/views/user_page/user_page.dart';

class ItemUserList extends StatelessWidget {
  final String userImage;
  final String userName;

  const ItemUserList({Key key, this.userImage, this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> UserPage()));
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(userImage),
                fit: BoxFit.cover
              ),
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(50)
            ),
          ),
        ),
        SizedBox(height: 5),
        Text('${userName}',textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,maxLines: 1,style: GoogleFonts.questrial(textStyle: TextStyle(fontSize: 10,color: Colors.grey[700], fontWeight: FontWeight.w900)),)
      ],
    );
  }
}
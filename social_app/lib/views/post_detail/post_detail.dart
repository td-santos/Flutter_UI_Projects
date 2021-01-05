import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width ,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network('https://photos8.com/wp-content/uploads/2019/11/Love-Hands-Heart-Copyright-by-Sam-Mugraby.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.comment,color: Colors.white,), 
                      onPressed: (){}
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.heart,color: Colors.white, ), 
                      onPressed: (){}
                    ),
                    /*IconButton(
                      icon: Icon(FontAwesomeIcons.solidHeart,color: Colors.white, ), 
                      onPressed: (){}
                    ),*/
                    IconButton(
                      icon: Icon(FontAwesomeIcons.shareAlt,color: Colors.white, ), 
                      onPressed: (){}
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
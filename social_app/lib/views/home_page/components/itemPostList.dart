import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/models/post_model.dart';
import 'package:social_app/views/user_page/user_page.dart';

class ItemPostList extends StatefulWidget {

  final String userName;
  final String userImage;
  final String postImage;
  final bool liked;
  final PostModel postModel;

  const ItemPostList(
      {Key key, this.userName, this.postImage, this.liked, this.userImage, this.postModel})
      : super(key: key);

  @override
  _ItemPostListState createState() => _ItemPostListState();
}

class _ItemPostListState extends State<ItemPostList> {

  bool liked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    liked = widget.liked;
  }
  @override
  Widget build(BuildContext context) {    
    
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 20),
          height: 465,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(17)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> UserPage(user: widget.postModel.userModel,)));
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(widget.userImage),
                                    fit: BoxFit.cover),
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.userName,
                            style: GoogleFonts.questrial(textStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w900)),
                          )
                        ],
                      ),
                    ),

                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: liked == true? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red[400],), 
                      onPressed: (){
                        setState(() {
                          liked = !liked;
                        });
                      })
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 375,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                        image: NetworkImage(widget.postImage), fit: BoxFit.cover)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

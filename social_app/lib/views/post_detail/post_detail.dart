import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/models/post_model.dart';
import 'package:social_app/views/comments_page/comments_page.dart';
import 'package:social_app/views/user_page/user_page.dart';

class PostDetail extends StatefulWidget {

  final PostModel post;
  const PostDetail({Key key, this.post}) : super(key: key);

  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  bool liked;

  @override
  void initState() {    
    liked = widget.post.liked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          height: 45,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.grey[900]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> UserPage(user: widget.post.userModel,)
                  ));
                },
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          widget.post.userModel.urlPhoto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${widget.post.userModel.userFirstName} ${widget.post.userModel.userLastName}',
                      style: GoogleFonts.questrial(
                          textStyle: TextStyle(fontSize: 15)),
                    )
                  ],
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  FontAwesomeIcons.ellipsisV,
                  size: 15,
                ),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(
                tag: widget.post.imagePost,
                child: Image.network(
                  widget.post.imagePost,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CommentsPage(
                                    postModel: widget.post,
                                  )));
                        }),
                    IconButton(
                        icon: liked
                            ? Icon(FontAwesomeIcons.heart, color: Colors.white)
                            : Icon(FontAwesomeIcons.solidHeart,
                                color: Colors.red[400]),
                        onPressed: () {
                          setState(() {
                            liked = !liked;
                          });
                        }),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.shareAlt,
                          color: Colors.white,
                        ),
                        onPressed: () {})
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

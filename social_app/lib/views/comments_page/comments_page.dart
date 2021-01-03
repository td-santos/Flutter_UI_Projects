import 'package:flutter/material.dart';
import 'package:social_app/models/Comments_model.dart';
import 'package:social_app/models/post_model.dart';
import 'package:social_app/views/comments_page/components/comment_item.dart';

class CommentsPage extends StatelessWidget {
  final PostModel postModel;

  const CommentsPage({Key key, this.postModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentários',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: postModel.imagePost,
              child: Container(
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          image: DecorationImage(
                              image: NetworkImage(postModel.imagePost),
                              fit: BoxFit.cover)),
                    ),
            ),
          )
        ],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      
      body: ListView.builder(
        itemCount: postModel.listComments.length,
        itemBuilder: (context,index){
          CommentsModel comment = postModel.listComments[index];
          return CommentItem(
            commentsModel: comment,
          );
        }
      )
    );
  }
}

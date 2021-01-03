import 'package:flutter/material.dart';
import 'package:social_app/models/Comments_model.dart';

class CommentItem extends StatelessWidget {
  final CommentsModel commentsModel;

  const CommentItem({Key key, this.commentsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red,Colors.orange]),
              //color: Colors.blue
            ),
            child: Center(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1),
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: NetworkImage(commentsModel.userModel.urlPhoto))),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                  
                  decoration: BoxDecoration(                    
                      color: Colors.indigo[50],
                      borderRadius: BorderRadius.circular(10),                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${commentsModel.userModel.userFirstName} ${commentsModel.userModel.userLastName}',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13
                      ),),
                      
                      Container(
                       // width: 200,                      
                        child: Text(
                          commentsModel.comment,
                          //overflow: TextOverflow.ellipsis,                        
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[700]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Text(
                      '  1 curtida',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Responder',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

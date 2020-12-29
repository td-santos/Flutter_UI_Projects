import 'package:flutter/material.dart';

class ItemPostList extends StatelessWidget {

  final String userName;
  final String userImage;
  final String postImage;
  final bool liked;

  const ItemPostList({Key key, this.userName, this.postImage, this.liked, this.userImage}) : super(key: key);


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
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  userImage),
                              fit: BoxFit.cover),
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      userName,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 395,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                        image: NetworkImage(
                            postImage),
                        fit: BoxFit.cover)),
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

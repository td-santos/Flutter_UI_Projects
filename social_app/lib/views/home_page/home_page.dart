import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/models/post_model.dart';
import 'package:social_app/models/user_model.dart';
import 'package:social_app/views/comments_page/comments_page.dart';
import 'package:social_app/views/home_page/components/itemPostList.dart';
import 'package:social_app/views/home_page/components/itemUserList.dart';
import 'package:social_app/views/post_detail/post_detail.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  UserModel userModel = UserModel();
  
  @override
  Widget build(BuildContext context) {

    List<UserModel> listaUsers = userModel.listUser();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10, top: 5),
              child: Icon(
                Icons.bookmark_border,
                color: Colors.pink[700],
                size: 25,
              ),
            ),
            Text(
              'photopost',
              style: GoogleFonts.questrial(
                textStyle: TextStyle(
                  color: Colors.pink[400],                  
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            color: Colors.grey[600],
            icon: Icon(FontAwesomeIcons.search),
            //icon: Icon(Icons.search),
            iconSize: 18,
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              color: Colors.grey[600],
              icon: Icon(FontAwesomeIcons.envelope,size: 20,),
              
              //icon: Icon(Icons.mail_outline),
              iconSize: 18,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        //physics: NeverScrollableScrollPhysics(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: MediaQuery.of(context).size.height - 120,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17)),
                child: ListView.builder(
                    itemCount: listaUsers.length, //20,
                    itemBuilder: (context, index) {
                      userModel = listaUsers[index];
                      return ItemUserList(
                        userName: userModel.userFirstName, //'Papa F',
                        userImage: userModel.urlPhoto//'https://olhardigital.com.br/wp-content/uploads/2020/12/Papa-Francisco.jpg',
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, top: 20),
              child: Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width - 140,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: listPost.length,
                      itemBuilder: (context, index) {
                        PostModel postModel = listPost[index];
                        return GestureDetector(
                          onTap: (){
                            //Navigator.of(context).push(MaterialPageRoute(
                              //builder: (context) => CommentsPage(postModel: postModel,)));
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PostDetail()));
                          },
                          child: ItemPostList(
                            userName: postModel.userModel.userFirstName,
                            userImage: postModel.userModel.urlPhoto,
                            postImage: postModel.imagePost,
                            liked: postModel.liked,
                            //userImage: 'https://olhardigital.com.br/wp-content/uploads/2020/12/Papa-Francisco.jpg',
                            //postImage: 'https://ricardohage.com.br/wp-content/uploads/2019/04/fotografia-profissional_0001_paisagem.jpg',
                          ),
                        );
                      }),
                ),
              ),
            ),
            //SizedBox(height: 200,)
          ],
        ),
      ),
    );
  }
}

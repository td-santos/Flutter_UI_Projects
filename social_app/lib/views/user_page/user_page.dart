import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/models/post_model.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(              
              child: Stack(
                children: [
                  Padding(
                    padding:const EdgeInsets.only(left: 25, right: 25, top: 30),
                    child: Container(
                      height: 150,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17)),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.blue[50],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      'https://i.imgur.com/yW0v5EP.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Matheus Ulrick',
                              style: GoogleFonts.questrial(
                                  textStyle: TextStyle(fontSize: 15)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '@ulrick',
                              style: GoogleFonts.questrial(
                                  textStyle: TextStyle(fontSize: 12)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Posts',
                                      style: GoogleFonts.questrial(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '70',
                                      style: GoogleFonts.questrial(
                                          textStyle: TextStyle(
                                        fontSize: 12,
                                      )),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Segudores',
                                      style: GoogleFonts.questrial(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '380',
                                      style: GoogleFonts.questrial(
                                          textStyle: TextStyle(
                                        fontSize: 12,
                                      )),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Likes',
                                      style: GoogleFonts.questrial(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '330',
                                      style: GoogleFonts.questrial(
                                          textStyle: TextStyle(
                                        fontSize: 12,
                                      )),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),

              
            ),

            SizedBox( height: 70,),
            
            Expanded(
              child: Container(  
                //padding: EdgeInsets.only(left: 15, right: 15),              
                //height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: listPost.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 1, mainAxisSpacing: 1), 
                  itemBuilder: (context, index){
                    PostModel postModel = listPost[index];
                    return Image.network(postModel.imagePost,fit: BoxFit.cover,);
                  }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

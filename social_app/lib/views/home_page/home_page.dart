import 'package:flutter/material.dart';
import 'package:social_app/views/home_page/components/itemUserList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10, top: 5),
              child: Icon(
                Icons.grain,
                color: Colors.indigo,
                size: 25,
              ),
            ),
            Text(
              'portrait',
              style: TextStyle(
                  color: Colors.pink[400],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          IconButton(
            color: Colors.grey[700],
            icon: Icon(Icons.search),
            iconSize: 18,
            onPressed: () {},
          ),
          IconButton(
            color: Colors.grey[700],
            icon: Icon(Icons.mail_outline),
            iconSize: 18,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
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
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ItemUserList(
                        userName: 'Papa Fddddd',
                        userImage:
                            'https://olhardigital.com.br/wp-content/uploads/2020/12/Papa-Francisco.jpg',
                      );
                    }),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

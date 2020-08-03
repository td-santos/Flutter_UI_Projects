import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[          
          Container(
            height: height,
            width: width,
            child: Image.asset("assets/capa_6.jpg",fit: BoxFit.cover,)
          ),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: _appBar()
          ),

        ],
      ),
    );
  }
  Widget _appBar(){
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon:Icon(
              Icons.arrow_back,
              color: Colors.white70,
            ),
          ),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello, Yana",
                    style: TextStyle(
                        letterSpacing: 1, color: Colors.white, fontSize: 13),
                  ),
                  Text(
                    "New york",
                    style: TextStyle(color: Colors.white24, fontSize: 8),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 5),
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
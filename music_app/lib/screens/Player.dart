import 'dart:ui';

import 'package:flutter/material.dart';

class Player extends StatefulWidget {

  final String urlPhoto;
  final String songName;
  final String playListName;

  const Player({Key key, this.urlPhoto, this.songName, this.playListName}) : super(key: key);
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  double valueSlide = 130;

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
              child: Image.asset(
                //"assets/capa_5.jpg",
                widget.urlPhoto,
                fit: BoxFit.cover,
              )),
          Positioned(top: 30, left: 0, right: 0, child: _appBar()),
          Positioned(bottom: 30, left: 0, right: 0, child: _player())
        ],
      ),
    );
  }

  Widget _player() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            //height: 235,
            decoration: BoxDecoration(
                color: Colors.white10, borderRadius: BorderRadius.circular(17)),
            padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          //"like it doens't hurt",
                          widget.songName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          //"chris shelet",
                          widget.playListName,
                          style: TextStyle(
                              color: Colors.white30,
                              letterSpacing: 1,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white30,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                
                Container(
                  child: Container(    
                    height: 10,                
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape:RoundSliderThumbShape(enabledThumbRadius: 0.0),
                          trackHeight: 3.5,
                          ),

                      child: Slider(
                          activeColor: Color(0xffFF2842),
                          inactiveColor: Colors.white30,
                          min: 0,
                          max: 245,
                          value: valueSlide,
                          onChanged: (value) {
                            setState(() {
                              valueSlide = value;
                            });
                          }),
                    ),
                  ),
                ), 
                SizedBox(height: 5,),               
                Padding(
                  padding: EdgeInsets.only(left: 23, right: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "01:30",
                        style: TextStyle(color: Colors.white24, fontSize: 10),
                      ),
                      Text(
                        "02:45",
                        style: TextStyle(color: Colors.white24, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.skip_previous, color: Colors.white,size: 30,), 
                      onPressed: (){}
                    ),
                    IconButton(
                      icon: Icon(Icons.fast_rewind, color: Colors.white,size: 30,), 
                      onPressed: (){}
                    ),
                    IconButton(
                      icon: Icon(Icons.pause, color: Colors.white,size: 30,), 
                      onPressed: (){}
                    ),
                    IconButton(
                      icon: Icon(Icons.fast_forward, color: Colors.white,size: 30,), 
                      onPressed: (){}
                    ),
                    IconButton(
                      icon: Icon(Icons.skip_next, color: Colors.white,size: 30,), 
                      onPressed: (){}
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.refresh, color: Colors.white30,), 
                     
                    Icon(Icons.swap_horiz, color: Colors.white30,), 
                      
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _appBar() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
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
                        letterSpacing: 1, color: Colors.white, fontSize: width * 0.04),
                  ),
                  Text(
                    "New york",
                    style: TextStyle(color: Colors.white24, fontSize: width * 0.025),
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

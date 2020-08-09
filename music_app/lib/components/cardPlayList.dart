import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_app/model/PlayListModel.dart';

class CardPlayList extends StatefulWidget {
  final PlayListModel plm;

  const CardPlayList({Key key, this.plm}) : super(key: key);

  @override
  _CardPlayListState createState() => _CardPlayListState();
}

class _CardPlayListState extends State<CardPlayList> {

  bool added ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    added = widget.plm.added;
  }
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
      child: Container(
        //color: Colors.white,
        //height: 100,
        width: width * 0.57,//200,
        child: Stack(
          children: <Widget>[            
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                      BoxShadow(
                        //color: Colors.pink.withAlpha(50),
                        offset: Offset(2, 1),
                        blurRadius: 8,
                        spreadRadius: 1
                      )
                    ]
                  ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.plm.urlImage,
                  fit: BoxFit.cover,
                  width: width * 0.50,//180,
                  height: height * 0.34,//260,
                ),
              ),
            ),
            
            Positioned(
              top: height * 0.04,//25,
              right: width * 0.01,//5,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    added = !added;
                  });
                },
                child: Container(
                  height: width * 0.11,//35,
                  width: width * 0.11,
                  decoration: BoxDecoration(
                    color: added != true ? Color(0xffFF2842) : Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    
                    
                  ),
                  
                  child: Center(
                    child: Icon(added != true ?Icons.add : Icons.check,color:added != true ?Colors.white : Color(0xff1E1F31),size: 20,),
                  ),
                ),
              )
            ),
            Positioned(
                bottom: height * 0.03,//20,
                left: width * 0.03,//10,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.plm.playListName,
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: width * 0.035,//12,
                        fontWeight: FontWeight.bold, 
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      widget.plm.songCapa,
                      style: TextStyle(
                        color: Colors.white60, 
                        fontSize: width * 0.025,//10,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

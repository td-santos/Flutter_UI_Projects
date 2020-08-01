import 'package:flutter/material.dart';
import 'package:music_app/model/PlayListModel.dart';
import 'package:music_app/screens/Home.dart';

class CardSongs extends StatefulWidget {
  final PlayListModel plm;
  final bool click;
  final Color cor;

  const CardSongs({Key key, this.plm, this.click, this.cor}) : super(key: key);

  @override
  _CardSongsState createState() => _CardSongsState();
}

class _CardSongsState extends State<CardSongs> {
  bool clicado = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          width: 70,
          child: ClipOval(
            child: Image.asset(
              widget.plm.urlImage,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 2,
            width: 70,
            color:
                widget.cor //clicado == true ? Colors.red : Color(0xff292A3E),
            )
      ],
    );
  }
}

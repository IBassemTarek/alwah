import 'package:flutter/material.dart';

import '../const.dart';

// ignore: must_be_immutable
class PageNo extends StatefulWidget {
      double ourWidth;
     double ourHeight;
    int soraAlwahNo;
      int currentLoh;
   PageNo({
this.soraAlwahNo, @required this.currentLoh , this.ourHeight , this.ourWidth 
  });

  @override
  _PageNoState createState() => _PageNoState();
}

class _PageNoState extends State<PageNo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: widget.ourWidth / 6,
      height: widget.ourHeight / 6,
      margin: EdgeInsets.all(5),
      decoration: new BoxDecoration(
     
    border: Border.all(
      width: 1.5,
color: kColumnColor2,
    ),
  
        color: kCellColor,
        shape: BoxShape.circle,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            (widget.currentLoh+1).toString(),
            style: TextStyle(color: kSecondColor, fontSize: 18),
          ),
          Container(
            color: kColumnColor2,
            height: 1,
            width: widget.ourWidth/10,
          ),
          Text(widget.soraAlwahNo.toString(), style: TextStyle(color: kColumnColor2, fontSize: 15)),
        ],
      ),
    );
  }
}
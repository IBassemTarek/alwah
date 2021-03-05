import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List<RowCellsModel> soraTable = [];

 List<OneItem> favouriteItem =  [];
 List<String> myavouriteSora = [];
 List<String> myavouriteLoh = [];
 String playedSoraName;
 int currentLoh;
 bool firstRun;
 int timesToRepeat=1;
class OneItem {
  String soraName;
  int index;
  OneItem({this.soraName,this.index});
}


class RowCellsModel {
  final String firstcell;
  final String secondcell;
  final String thirdcell;
  final String fourthcell;
 

  const RowCellsModel({@required this.firstcell, @required this.fourthcell,@required this.secondcell,@required this.thirdcell});
}

List <String> choices = [];

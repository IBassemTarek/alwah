 import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import '../widget/toRepeatG.dart';
import '../const.dart';
import '../models.dart';
 Widget oneCell({double height, String text,int soraNumber,int rowNumber, int kelmaNumber ,AudioPlayer advancedPlayer,BuildContext context,AudioCache audioCache}) {
    return InkWell(
            splashColor: kSecondColor,
          child: Ink(
            color: (rowNumber%2==0)?kCellColor2:kCellColor,
        height: height * 0.161,
        width: height * 0.161,
        child: Center(
          child: Text(
            "$text",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 16),
            textScaleFactor: 1.5,
          ),
        ),
      ),
      //TODO::make again
      onTap: ()async {
        if (kelmaNumber==0 || text == ' ' ) {
// print('no data');
        } 
        else  {
         if (timesToRepeat==1)
         {
          await advancedPlayer?.stop();
          audioCache.play(kalemaSoundPathOffline+soraNumber.toString()+'-'+rowNumber.toString()+'-('+kelmaNumber.toString()+').mp3');
         }
        else 
        {
          repeaterGeneral (path:kalemaSoundPathOffline+soraNumber.toString()+'-'+rowNumber.toString()+'-('+kelmaNumber.toString()+').mp3' , advancedPlayer:advancedPlayer, audioCache:audioCache);
        }
        }
          },
          onLongPress: () async {
         if (kelmaNumber==0 || text == ' ' ) {
// print('no data');
        } 
        else  {
         if (timesToRepeat==1)
         {
          await advancedPlayer?.stop();
          audioCache.play(linesSoundPathOffline+soraNumber.toString()+' ('+rowNumber.toString()+').mp3');
        }
        else 
        {
          repeaterGeneral (path:linesSoundPathOffline+soraNumber.toString()+' ('+rowNumber.toString()+').mp3' , advancedPlayer:advancedPlayer, audioCache:audioCache);
        }
        }
        },
    );
  }


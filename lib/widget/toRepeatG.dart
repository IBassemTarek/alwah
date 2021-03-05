import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models.dart';
//kalemaSoundPathOffline+soraNumber.toString()+'-'+rowNumber.toString()+'-('+kelmaNumber.toString()+').mp3'
repeaterGeneral ({String path , AudioPlayer advancedPlayer, AudioCache audioCache}) async {
          int duration;
                 advancedPlayer?.stop();
                await audioCache.loop(path).then((value) async
                    { 
                         await new Future.delayed(Duration(milliseconds:100 )).then((value) async {
                         duration= await advancedPlayer.getDuration(); 
                          });
                                 Duration z= Duration(milliseconds:timesToRepeat*duration );  
                               await new Future.delayed(z).then((value) {
         print('time out');
       advancedPlayer?.stop();
       }
       );
                    });

}
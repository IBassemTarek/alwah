
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models.dart';

playSoraRepeated({String path,int duration , AudioPlayer advancedPlayer, AudioCache audioCache}) async {
       advancedPlayer?.stop();
                await audioCache.loop(path);
      //  await audioCache.loop(soraSoundPathOffline+soraNo.toString().padLeft(3, '0')+'.mp3').then((value) async
      //  {
      //     y= await getDuration();
      //     print(y);
      //  } 
      //  );
       if (duration!=-1)
       {
       Duration z= Duration(milliseconds:timesToRepeat*duration );                       
       await new Future.delayed(z).then((value) {
         print('time out');
       advancedPlayer?.stop();
       }
       );
       }

  }

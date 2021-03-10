import 'dart:ui';
import 'package:flutter/material.dart';
import 'models.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'const.dart';
import 'screens/onBoarding.dart';
import 'screens/homePage.dart';
import 'package:audioplayers/audio_cache.dart';
import 'widget/pageRouteAnimation.dart';
import 'dart:async';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alwah',
      theme: textData(),
      home: MySplashScreen(),
    );
  }
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> with WidgetsBindingObserver {

  @override
  void initState()   {
    super.initState();
    getData();
    AudioCache audioCache = new AudioCache(); 
    audioCache.play(introSoundaOffline);
  }


  @override
void dispose() {
  super.dispose();
  WidgetsBinding.instance.removeObserver(this);
}


    getData () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getStringList("myavouriteSora")!=null && prefs.getStringList("myavouriteLoh")!=null && prefs.getString("playedSoraName")!=null && prefs.getInt("currentLoh")!=null)
    {
      print (false);
      setState(() {
      myavouriteSora = prefs.getStringList("myavouriteSora");
      myavouriteLoh = prefs.getStringList("myavouriteLoh");
      playedSoraName = prefs.getString("playedSoraName");
      currentLoh = prefs.getInt("currentLoh");
    }); 
    }

    else if (prefs.getString("playedSoraName") ==null && prefs.getInt("currentLoh") ==null) 
    {
    setState(() {
        playedSoraName = 'سُورَةُ الإخْلَاص'; 
        currentLoh=0;
    }); 
    print (true);
    }
    if (prefs.getBool("firstRun") ==null)
    {
      setState(() {
      firstRun=true;  
      });
    }
    else if (prefs.getBool("firstRun") !=null)
    {
      setState(() {
      firstRun = prefs.getBool("firstRun"); 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
        final _height = MediaQuery.of(context).size.height;
    if (firstRun ==null )
    firstRun=true;
    Timer(Duration(seconds: 14), () {
      // Navigator.push(context, PageRouteBuilder(pageBuilder: (_, __, ___) => firstRun? OnBoarding() : HomePage(),transitionDuration: Duration(seconds: 0),));
                         Navigator.pushAndRemoveUntil(
                        context,
                        OnBoardingPageRoute(
                            duration: 30,
                            widget: firstRun? OnBoarding() : HomePage(),
                            myAnimation: Curves.easeInCubic),
                        (route) => false);
    });
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: Align(
        alignment: Alignment.center,
              child: Container(
                height:_height/3,
                color: kBgBorderColor,
                child:Image.asset('assets/images/loading.gif'),
        ),
      ),
    );

  }
}
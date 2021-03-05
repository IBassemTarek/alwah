
import 'dart:io';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget/customExpansionTile.dart' as custom;
import '../widget/pageRouteAnimation.dart';
import 'onBoarding.dart';
import '../widget/pageNo.dart';
import '../models.dart';
import '../const.dart';
import '../widget/oneCell.dart';
// import "widgets/toRepeat.dart";
import '../widget/alert.dart';


class HomePage extends StatefulWidget  {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {

    AudioPlayer advancedPlayer = new AudioPlayer();  
    AudioCache audioCache = new AudioCache(); 
    bool ready;
    int soraNo; 
    int soraAlwahNo;
    bool isExpanded1 = false;
    bool isExpanded2 = false;
    bool isExpanded3 = false;
    bool isExpanded4 = false;
    PageController controller;
    String localFilePath;

@override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    audioCache = AudioCache(fixedPlayer : advancedPlayer);
    ready=false;
    soraTable = moshaf[playedSoraName];
    controller = PageController(initialPage: currentLoh);
    soraNo = soraNoBuffer+surasList.indexOf(playedSoraName)+1;
    soraAlwahNo=surasAlwahNoList[surasList.indexOf(playedSoraName)];
    choices.clear();
    for (int i =0 ; i<soraAlwahNo;i++)
    choices.add(alwahNameList[i]);
    if (Platform.isIOS) {
      if (audioCache.fixedPlayer != null) {
        audioCache.fixedPlayer.startHeadlessService();
      }
    advancedPlayer.startHeadlessService();
  }
}

@override
void dispose() async {
  super.dispose();
  WidgetsBinding.instance.removeObserver(this);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setStringList("myavouriteSora", myavouriteSora);
  prefs.setStringList("myavouriteLoh", myavouriteLoh);
  prefs.setString("playedSoraName",playedSoraName);
  prefs.setInt("currentLoh",currentLoh);
}

@override
void didChangeAppLifecycleState(AppLifecycleState state) async {
  super.didChangeAppLifecycleState(state);
  if (state == AppLifecycleState.inactive || state == AppLifecycleState.detached){
    return;
  }

  final isBackground = state == AppLifecycleState.paused;

  if (isBackground){
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setStringList("myavouriteSora", myavouriteSora);
  prefs.setStringList("myavouriteLoh", myavouriteLoh);
  prefs.setString("playedSoraName",playedSoraName);
  prefs.setInt("currentLoh",currentLoh);
  }
  
}

 


  void _select(String choice) {
    setState(() {
      int loh = choices.indexOf(choice);
      currentLoh=loh;
      controller.jumpToPage(loh);
    });
  }


Widget simplePopup({double height,double width}) => PopupMenuButton<String>(
  
            elevation: 3.2,
            tooltip: 'إختر لوح',
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((String choice) {
                return PopupMenuItem(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
              child:PageNo(
                ourHeight: height,
                ourWidth: width,
                soraAlwahNo:soraAlwahNo, currentLoh: currentLoh ,
              ),
        );

_launchURL({String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch';
  }
}
  // ignore: missing_return
  bool contain({String sora , String loh}) {
  if (myavouriteSora.contains(sora)&&myavouriteLoh.contains(loh) )
  {
for (int i=0; i<myavouriteLoh.length;i++)
{
  if (myavouriteSora[i]==sora && myavouriteLoh[i]==loh)
  {
  return true;
  }
}
 return false;
  }
  else
  return false;
  }





   fetchAyat()  {
      soraTable=moshaf[playedSoraName].toList();
      while (soraTable.length < (soraAlwahNo*5))
      {
        setState(() {
        soraTable.add(   
           RowCellsModel
            (
          firstcell: ' ',
          secondcell:  ' ',
          thirdcell:' ' ,
          fourthcell:  ' '
            ),
         );
        });
      }
      advancedPlayer?.stop();
      // ready=true;
      controller.jumpToPage(currentLoh);
  }






  soraAlertDialog({BuildContext context}) {
  // set up the button
  Widget okButton = InkWell(
    child: Padding(
      padding: const EdgeInsets.only(left:15.0,bottom: 10),
      child: Text("حسناً",style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 16, color:kPrimaryColor )),
    ), 
    onTap: () {
      Navigator.of(context).pop();
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:Text("الْحِفْظ بِالتَّكْرَار"), 
    content:

        Row(
          children: [
            Text('إختر عدد مرات التكرار'),
            SizedBox(
              width: 5,
            ),
            Container(
              width:60,
              height: 30,
              child: TextField(
              cursorHeight: 20,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '...      ',
              ),
              onChanged: (value){
                  setState(() {
                    if (timesToRepeat!=0)
                    timesToRepeat= int.parse(value);
                  });
              },
              ),
            )
        ],),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Directionality(
                textDirection: TextDirection.rtl,
                child: alert
      );
    },
  );
}



final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
          SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[         
            Container(
              padding: EdgeInsets.only(top:80,bottom:60),
              color:kPrimaryColo3 ,
              child: Column(
                children: [

                  Center(
                    child: Image.asset("assets/images/logo.png",height: 130,),
                    ),
                ],
              ),
            ),


            Directionality(
                         textDirection: TextDirection.rtl,
                          child: custom.ExpansionTile(
                            initiallyExpanded: false,
                            headerBackgroundColor: isExpanded1  ? kPrimaryColor : Colors.transparent,
                            iconColor: Colors.black,
                            onExpansionChanged: (bool expanding) => setState(() => this.isExpanded1 = expanding),
                  title: Text('اخْتَر السُّورَة',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 22)),
                  children: [
                    
                    for (String item in surasList)
                          custom.ExpansionTile(
                            initiallyExpanded: false,
                            headerBackgroundColor:  Colors.transparent,
                            iconColor: Colors.black,
                            backgroundColor:surasAlwahColorList[surasList.indexOf(item)].withOpacity(0.7),
                            title: ListTile(
                                 leading: Text(
                                  item,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(fontSize: 22),
                              ),
  
                              trailing: Text(
                               "(  " + surasAlwahNoList[surasList.indexOf(item)].toString()+ "  )",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(color: kFifthColor),
                              ),
                            ),
                            children: [
                              for(int i=0;i<surasAlwahNoList[surasList.indexOf(item)];i++)
                              ListTile(
                                leading:
                                Text(
                                  alwahNameList[i],
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(fontSize: 18,
                                       //color: kGreyColor,
                                       color: kBgBorderColor,
                                       ),
                              ),

                              onTap: ()async {
                                  await advancedPlayer?.stop();
                                  setState(() {
                                    playedSoraName = item;
                                    soraNo = surasList.indexOf(playedSoraName)+soraNoBuffer+1;
                                    soraAlwahNo=surasAlwahNoList[soraNo-soraNoBuffer-1]; 
                                    choices.clear();
                                    for (int i =0 ; i<soraAlwahNo;i++)
                                    choices.add(alwahNameList[i]);
                                    currentLoh=i;
                                    fetchAyat();
                                    Navigator.pop(context,item);
                                  });
                              },
                              )
                            ],
                          ),
                        
                  ],),
            ),

                        Directionality(
                         textDirection: TextDirection.rtl,
                          child: custom.ExpansionTile(
                            initiallyExpanded: false,
                            headerBackgroundColor: isExpanded2 ? kPrimaryColor : kGreyColor2,
                            iconColor: Colors.black,
                            onExpansionChanged: (bool expanding) => setState(() => this.isExpanded2 = expanding),
                            title: Text('الْأَلْوَاح الْمَحْفُوظَة',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 22)),
                     children: [
                       ListView.builder(
                         shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                         itemCount:myavouriteSora.length,
                        itemBuilder: (BuildContext context,int index){ 
                      return  Dismissible (
                            background :Container(
                            child: Align(
                            alignment: Alignment.centerLeft, 
                            child: Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Icon(Icons.cancel,color: kBgBorderColor,),
                            ),
                            ),
                            color:kLastOfSoraColor
                            ),
                            secondaryBackground: Container(alignment: Alignment.centerRight, child: Padding(
                              padding: const EdgeInsets.only(right:15.0),
                              child: Text(
                                  'إزَالَة',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(color: kBgBorderColor)
                              ),
                            ),color:kLastOfSoraColor),
                            key: UniqueKey(),
                            onDismissed: (DismissDirection direction) async {
                                setState(() {
                                    myavouriteLoh.removeAt(index);
                                    myavouriteSora.removeAt(index);
                              });
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setStringList("myavouriteSora", myavouriteSora);
              prefs.setStringList("myavouriteLoh", myavouriteLoh);
                              },
                                
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                   child: ListTile(
                                   onTap: ()async {
                                    await advancedPlayer?.stop();
                                    setState(() {
                                      playedSoraName = myavouriteSora[index];
                                      soraNo = surasList.indexOf(playedSoraName)+soraNoBuffer+1;
                                      soraAlwahNo=surasAlwahNoList[soraNo-soraNoBuffer-1]; 
                                      currentLoh= int.parse(myavouriteLoh[index])-1;
                                    choices.clear();
                                    for (int i =0 ; i<soraAlwahNo;i++)
                                    choices.add(alwahNameList[i]);
                                      fetchAyat();
                                      Navigator.pop(context);
                                    });
                              },
                              leading: Text(
                                    myavouriteSora[index],
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontSize: 22),
                              ),
  
                              trailing: Text(
                               "(  " + myavouriteLoh[index]+ "  )",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(color: kFifthColor),
                              ),
                            ),
                                ),
                          );})
                      ],),),


                        Directionality(
                         textDirection: TextDirection.rtl,
                          child: custom.ExpansionTile(
                            initiallyExpanded: false,
                            headerBackgroundColor: isExpanded3  ? kPrimaryColor : Colors.transparent,
                            iconColor: Colors.black,
                            onExpansionChanged: (bool expanding) => setState(() => this.isExpanded3 = expanding),
                            title: Text('الْحِفْظ بِالتَّكْرَار',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 22)),
                      children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:15),
                                  child: Align( alignment: Alignment.centerRight,child: Text('إختر عدد مرات التكرار' ,style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 20))),
                                ),
                                SizedBox(
                                  width: 5,
                                ),

            Padding(
              padding: const EdgeInsets.only(right:15,left:15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                            Container(
                                    width:60,
                                    height: 30,
                                    child: TextField(
                                    cursorHeight: 20,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: '...      ',
                                    ),
                                    onChanged: (value){
                                        setState(() {
                                        if (timesToRepeat!=0 ||timesToRepeat!=null)
                                        timesToRepeat= int.parse(value);
                                        else {
                                          timesToRepeat=1;
                                        }
                                        });
                                    },
                                    ),
                                  ),


                    Container(
                margin:  const EdgeInsets.only(top:10,left:15,bottom:8,right:15),
               height: _height * 0.04,
               width: _width/2,
              decoration: BoxDecoration(
                border: Border.all(color: kGreyColor),
                borderRadius: BorderRadius.all(Radius.circular(20.0),),
                  ),
                    child: InkWell(
                      highlightColor: Colors.transparent,
          onTap: (){
                    Navigator.of(context).pop();
          },
                     child: Center(child: Text("موافق",style:TextStyle(color: kPrimaryColor))),
                    ),
                  ),


                ],
              ),
            )
                              ],
                            ),
                      ],
                      ),), 
                                        Directionality(
                         textDirection: TextDirection.rtl,
                          child: custom.ExpansionTile(
                            initiallyExpanded: false,
                            headerBackgroundColor: isExpanded4 ? kPrimaryColor : kGreyColor2,
                            iconColor: Colors.black,
                            onExpansionChanged: (bool expanding) => setState(() => this.isExpanded4 = expanding),
                            title: Text('قُم بِشِرَاء الْمُنْتِج',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 22)),
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: _width/1.4,
                              child: Text('قم بزيارة متجرنا لشراء الألواح و التعرف علي المزيد من منتجاتنا',style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 20))),
                          InkWell(
                                 onTap: (){
                                    _launchURL(url: "https://www.moslimleader.com/product/%d8%b9%d8%b1%d8%b6-%d8%a3%d9%84%d9%88%d8%a7%d8%ad-%d9%85%d9%86-%d8%a7%d9%84%d9%86%d8%a8%d8%a3-%d9%84%d9%84%d9%86%d8%a7%d8%b3/" ); 
                                  },
                              child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('www.moslimleader.com',style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 18) ),
                      
                              Image(
                              image: AssetImage("assets/images/product.png"),
                              height: 80,
                              width: 80,
                        ),
                        
                                ],
                              ),
                            ),
                          )

                          ],
                        ),

                      ] ),),
                          Directionality(
                         textDirection: TextDirection.rtl,
                          child:InkWell(
                            onTap: (){
                         Navigator.pushAndRemoveUntil(
                        context,
                        OnBoardingPageRoute(
                          duration: 1000,
                            widget: OnBoarding(),
                            myAnimation: Curves.easeInCubic),
                        (route) => false);
                            },
                              child: Row(
                              children: [
                                SizedBox(width:10 ,),
                              Directionality(
                              textDirection: TextDirection.ltr,
                              child: Icon(Icons.help,
                                          color: surasAlwahColorList[soraNo-soraNoBuffer-1],
                                ),
                              ),
                              SizedBox(width:10 ,),
                              Text ('لَوْحَة التعليمات',style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 22)),

                            ],),
                          ),
                          )

          ],
      ),
        ),
        appBar: AppBar(
          backgroundColor: surasAlwahColorList[soraNo-soraNoBuffer-1].withOpacity(0.7),
          centerTitle: true,
          shadowColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            InkWell(
                child: Stack(
                  alignment: Alignment.center,
                children: [
                    SvgPicture.asset(
                    'assets/images/book.svg',
                    height: _height/15.5,
                  ),
                ],
                ), 
            onTap: () async {
setState(()  {
  if(!contain(sora: playedSoraName,loh: (currentLoh+1).toString()))
  {
  setState(() {
    return showAlertDialog(context: context,newFav: true,currentLoh: currentLoh, playedSoraName: playedSoraName);
  });
  }
  else {
setState(() {
  return showAlertDialog(context: context,newFav: false,currentLoh: currentLoh, playedSoraName: playedSoraName);
});
  }
});
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setStringList("myavouriteSora", myavouriteSora);
              prefs.setStringList("myavouriteLoh", myavouriteLoh);
            },
            ),
            simplePopup(height: _height,width: _width),
            // InkWell(
            //   onTap:(){
            //     simplePopup(height: _height,width: _width);
            //   },
            //     child: PageNo(
            //     ourHeight: _height,
            //     ourWidth: _width,
            //     soraAlwahNo:soraAlwahNo, currentLoh: currentLoh ,
            //   ),
            // ),
          ],
          title: Center(
            child: InkWell(
                highlightColor:kSecondColor,
                 onTap: () async {
                    //TODO:Sora Local and audio to repeate
                      // await advancedPlayer?.stop();
                      //  audioCache.play(soraSoundPathOffline+soraNo.toString().padLeft(3, '0')+'.mp3');
                // onTap: ()async {
                                                    //  await loadFile();
                                                    //  Uri soraInternalPath = await fetchAudio(soraSoundPath+soraNo.toString().padLeft(3, '0')+'.mp3','saveTest'); 
                                                    //  int result = await advancedPlayer.play(localFilePath, isLocal: true);
                                                    //  print(soraInternalPath);
                // int result = await advancedPlayer.play(soraSoundPath+soraNo.toString().padLeft(3, '0')+'.mp3');
                // print(soraSoundPath+soraNo.toString().padLeft(3, '0')+'.mp3');
                //  if (result == 1) {
                //  } 
                            // soraAlertDialog(context: context);
                            
                            
                            //TODO::playSoraRepeated
                            // playSoraRepeated(path: soraSoundPathOffline+soraNo.toString().padLeft(3, '0')+'.mp3', duration: soraDuration[soraNo-soraNoBuffer-1],advancedPlayer:advancedPlayer,audioCache:audioCache);
                            
                            
                            
                            // setState(() {
                            // timesToRepeat=6;  
                            // });
                            
                            // print(timesToRepeat);
                            // await advancedPlayer?.stop();
                            // await audioCache.play(basmalSoundaOffline);
                            // int y= await advancedPlayer.getDuration();                            
                            // await audioCache.loop(basmalSoundaOffline);
                            // Duration z= Duration(milliseconds:timesToRepeat*y );
                            // await new Future.delayed(z).then((value) => 
                            // advancedPlayer.stop()
                            // );
                            // await advancedPlayer?.stop();
              },
              onLongPress: (){
                soraAlertDialog(context: context);
              },
                child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/soraframe.svg',
                    height: _height / 17,
                    color: surasAlwahColorList[soraNo-soraNoBuffer-1],
                  ),
                  Center(
                      child: Text(playedSoraName,
                            style: Theme.of(context).textTheme.headline1),
                      )
                ],
              ),
            ),
          ),
        ),
        body: Directionality(
                textDirection: TextDirection.rtl,
                  child: PageView( 
            onPageChanged: _onPageViewChange,
          controller :controller, 
          scrollDirection: Axis.horizontal,
          children :[
            for (int j=0; j < soraAlwahNo; j++)
              SafeArea(
                child: SingleChildScrollView(
                  dragStartBehavior: DragStartBehavior.down,
                            child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: _height / 13,
                          decoration: BoxDecoration(
                            color: kCellColor2,
                            border: Border.all(
                              color: kColumnColor2,
                              width: _width / 360,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                splashColor: kSecondColor,
                                      child: Ink(
                                  child:Container(
                                    height: _height/13,
                                    width: _width/7,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Icon(Icons.arrow_back_ios,
                                      color: surasAlwahColorList[soraNo-soraNoBuffer-1],
                                      ),
                                    ),
                                  ),
                                ),

                                onTap: ()async{
                                  if (soraNo!=soraNoBuffer+1)
                                  {
                                  await advancedPlayer?.stop();
                                setState(() {
                                  soraNo--;
                                  playedSoraName = surasList[soraNo-soraNoBuffer-1];
                                  soraAlwahNo=surasAlwahNoList[soraNo-soraNoBuffer-1]; 
                                  choices.clear();
                                    for (int i =0 ; i<soraAlwahNo;i++)
                                    choices.add(alwahNameList[i]);
                                 //soraTable.clear();
                                  currentLoh =0;
                                  fetchAyat();
                                });
                                  }

                              },
                              ),
                             
                              InkWell(
                                splashColor: kSecondColor,
                                      child: Ink(
                                        child: Text(
                                 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                ),
                  //  onTap: ()async {
                      onTap: () async {
                        //TODO:Basmala Local
                              advancedPlayer?.stop();
                              audioCache.play(basmalSoundaOffline);
                              // print(await getDuration());
                              
                              //TODO::playSoraRepeated
                              // playSoraRepeated(path:basmalSoundaOffline, duration:4008,audioCache: audioCache,advancedPlayer: advancedPlayer );
                              
                              
                              // int result = await advancedPlayer.play(basmalSoundaPath);
                    // if (result == 1) {
                    
                    // }
                  },
                              ),
                            
                                    InkWell(
                                      splashColor: kSecondColor,
                                child: Ink(
                                child:Container(
                                    height: _height/13,
                                    width: _width/7,
                                  child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Icon(Icons.arrow_back_ios,
                                  color: surasAlwahColorList[soraNo-soraNoBuffer-1],
                                    ),
                                  ),
                                ),
                              ),

                                onTap: ()async{
                             
                                  if (soraNo<maxSora)
                                  {
                                  await advancedPlayer?.stop();
                                setState(()  {
                                  soraNo++;
                                  playedSoraName = surasList[soraNo-soraNoBuffer-1];
                                  soraAlwahNo=surasAlwahNoList[soraNo-soraNoBuffer-1]; 
                                  choices.clear();
                                    for (int i =0 ; i<soraAlwahNo;i++)
                                    choices.add(alwahNameList[i]);
                                  currentLoh =0;
                                  fetchAyat();
                                });
                                  }
                              },
                             ),
                            ],
                          ),
                        ),
                      Table(
                        textDirection: TextDirection.rtl,
                        border: TableBorder.all(width: 1.0, color: kColumnColor2),
                        children: [
                          
                          for (int i = 0; i <= 4 ; i++)
                               TableRow(children: [
                                oneCell(
                                  height:_height,
                                  text: soraTable[i+(5*j)].firstcell,
                                  soraNumber: soraNo , 
                                  rowNumber: i+(5*j)+1 ,
                                   kelmaNumber: 1, 
                                   advancedPlayer:advancedPlayer,
                                   audioCache: audioCache,
                                   context:context
                                   ),
                                  
                                  oneCell(
                                   height:_height,
                                   text: soraTable[i+(5*j)].secondcell ,
                                   soraNumber: soraNo , 
                                   rowNumber: i+(5*j)+1 ,
                                   kelmaNumber: 2 ,
                                   advancedPlayer:advancedPlayer,
                                   audioCache: audioCache,
                                   context:context
                                   ),

                                  oneCell(
                                  height:_height,
                                  text: soraTable[i+(5*j)].thirdcell ,
                                   soraNumber: soraNo , 
                                   rowNumber: i+(5*j)+1 ,
                                   kelmaNumber:3 ,
                                   advancedPlayer:advancedPlayer,
                                   audioCache: audioCache,
                                   context:context
                                   ),

                                  oneCell(
                                  height:_height,
                                  text: soraTable[i+(5*j)].fourthcell ,
                                   soraNumber: soraNo , 
                                   rowNumber: i+(5*j)+1 ,
                                   kelmaNumber: 4,
                                   advancedPlayer:advancedPlayer,
                                   audioCache: audioCache,
                                   context:context
                                    ),
                            ]) 
                                             
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));    
  }

_onPageViewChange(int page) async {   
  setState(() {
    currentLoh = page;
  });
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setStringList("myavouriteSora", myavouriteSora);
  prefs.setStringList("myavouriteLoh", myavouriteLoh);
  prefs.setString("playedSoraName",playedSoraName);
  prefs.setInt("currentLoh",currentLoh);

}


}


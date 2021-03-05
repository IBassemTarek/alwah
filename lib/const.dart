import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models.dart';
const int soraNoBuffer = 77;
const int maxSora = 116;
const Color kPrimaryColo3 = Color(0xff004B16);
const Color kPrimaryColor2 = Color(0xff95C11F);
const Color kPrimaryColor = Color(0xff04AE64);
const Color kFontColor = Color(0xff008D36);
const Color kSecondColor = Color(0xff8DC63F);
const Color kSecondColor2 = Color(0xff3AAA35);
const Color kThirdColor = Color(0xffC6C500);
const Color kFourthColor = Color(0xffFFDD00);
const Color kFifthColor = Color(0xff494955);
const Color kBorderColor = Color(0xffBDBDDE);
const Color kBgBorderColor = Color(0xffF7F7F7);
const Color kGreyColor = Color(0xff87878B);
const Color kIconColor = Color(0xff818181);
const Color kGreyColor2 = Color(0xfff4f4f4);
const Color kText1Color = Colors.black;
const Color kText2Color = Colors.white;
const Color kColumnColor = Color(0xffF9A01B);
const Color kColumnColor2 = Color(0xffB07E09);
const Color kLastOfSoraColor = Color(0xffD12127);
const Color kCellColor = Color(0xffFFF5C9);
const Color kCellColor2 = Color(0xffFFED96);

const List <String> alwahNameList = [
    '( 1 )  اللَّوْحُ الأَوَّلُ',
    "( 2 ) اللَّوْحُ الثَّانِي",
    "( 3 ) اللَّوْحُ الثّالِثُ",
    "( 4 ) اللَّوْحُ الرّابِعُ",
    "( 5 ) اللَّوْحُ الخامِسُ",
    "( 6 ) اللَّوْحُ السّادِسُ",
    "( 7 ) اللَّوْحُ السّابِعُ",
    "( 8 ) اللَّوْحُ الثّامِنُ",
    "( 9 ) اللَّوْحُ التّاسِعُ",
    "( 10 ) اللَّوْحُ العاشِرُ",
    "( 11 ) اللَّوْحُ الْحَادِي عَشَرَ",

]; 



// String kalemaSoundPath = 'https://audio.qurancdn.com/wbw/';
// String basmalSoundaPath = 'https://audio.qurancdn.com/Alafasy/mp3/001001.mp3';
// String soraSoundPath = 'https://server9.mp3quran.net/zahrani/';
const String kalemaSoundPath = 'https://alwah.aqtar-design.com/kalemat2/';
const String basmalSoundaPath = 'https://alwah.aqtar-design.com/basmala.mp3';
const String soraSoundPath = 'https://alwah.aqtar-design.com/sora/';
const String ayaTextPath = 'https://api.quranwbw.com/';
const String basmalSoundaOffline = 'sounds/basmala.mp3';
const String soraSoundPathOffline = 'sounds/sora/';
const String kalemaSoundPathOffline = 'sounds/kalemat/';
const String linesSoundPathOffline = 'sounds/line/';
const String introSoundaOffline = 'sounds/alwah intro.mp3'; 
  ThemeData textData() {
    return ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kSecondColor,
        textTheme: 
          TextTheme(
            headline1: TextStyle(
              fontFamily: "Hafs",
              fontSize: 24,
              color: kText2Color,
              fontWeight: FontWeight.bold
            ),
            subtitle1: TextStyle(
              fontFamily: "Hafs",
              fontSize: 17,
              color: kText1Color,
            ),
            bodyText1: TextStyle(
              fontFamily: "Hafs",
              fontSize: 20,
              color: kText1Color,
            ),
            bodyText2: TextStyle(
              fontFamily: "arial",
              fontSize: 20,
              color: kText1Color,
            )
          ),
     

       // Scheherazade , amiri
        backgroundColor: Colors.white);
  }



  const List <String > surasList = [
'سُورَةُ النـَّبأ',
'سُورَةُ النـّازِعات',
'سُورَةُ عَبَس',
'سُورَةُ التـَّكْوير',
'سُورَةُ الإنفِطار',
'سُورَةُ المُطـَفِّفين',
'سُورَةُ الإنشِقاق',
'سُورَةُ البُروج',
'سُورَةُ الطّارق',
'سُورَةُ الأعلي',
'سُورَةُ الغاشِيَة',
'سُورَةُ الفَجْر',
'سُورَةُ البَـلـَد',
'سُورَةُ الشــَّمْس',
'سُورَةُ اللـَّيل',
'سُورَةُ الضُّحي',
'سُورَةُ الشَّرْح',
'سُورَةُ التـِّين',
'سُورَةُ العَلـَق',
'سُورَةُ القـَدر',
'سُورَةُ البَيِّنَة',
'سُورَةُ الزلزَلة',
'سُورَةُ العَادِيات',
'سُورَةُ القارِعَة',
'سُورَةُ التَكاثـُر',
'سُورَةُ العَصْر',
'سُورَةُ الهُمَزَة',
'سُورَةُ الفِيل',
'سُورَةُ قـُرَيْش',
'سُورَةُ المَاعُون',
'سُورَةُ الكَوْثَر',
'سُورَةُ الكَافِرُون',
'سُورَةُ النـَّصر',
'سُورَةُ المَسَد',
'سُورَةُ الإخْلَاص',
'سُورَةُ الفَلَق',
'سُورَةُ النَّاس',
'سُورَةُ الْفَاتِحَة',
'آيَةَ الْكُرْسِيِّ',
];










const Map<String,List<int>> lineDuration =  {
'سُورَةُ النـَّبأ' : [
    7949,
  7949,
  7949,
  7949,
  7949,
    7949,
  7949,
  7949,
  7949,
  7949,
    7949,
  7949,
  7949,
  7949,
  7949,
    7949,
  7949,
  7949,
  7949,
  7949,
    7949,
  7949,
  7949,
  7949,
  7949,
    7949,
  7949,
  7949,
  7949,
  7949,
    7949,
  7949,
  7949,
  7949,
  7949,
  5928,
    7949,
  7949,
  7949,
  7949,
      7949,
  7949,
  7949,
  7949,
  7949,
    7949,
  7949,
  7949,
  7949,
  7949,
],
'سُورَةُ النـّازِعات':
[
    9125,9125,9125,9125,
  3240,
  3000,
  9125,9125,9125,9125,
  9125,9125,9125,9125,9125,9125,9125,9125,9125,9125,
  9125,9125,9125,9125,9125,9125,9125,9125,9125,9125,
  9125,9125,9125,9125,9125,9125,9125,9125,9125,9125,
  9125,9125,9125,9125,9125,9125,9125,9125,9125,9125,
],
'سُورَةُ عَبَس':
[
    7445,7445,7445,7445,7445,7445,7445,7445,7445,7445,
  7445,7445,7445,7445,7445,7445,7445,7445,7445,7445,
  7445,7445,7445,7445,7445,7445,7445,7445,7445,7445,
  7445,7445,7445,7445,7445,7445,7445,7445,7445,7445,
],
'سُورَةُ التـَّكْوير':
[
    9077,9077,9077,9077,9077,9077,9077,9077,9077,9077,
  9077,9077,9077,9077,9077,9077,9077,9077,9077,9077,
  9077,9077,9077,9077,9077,9077,9077,9077,9077,9077,
],

'سُورَةُ الإنفِطار':
[
  9245,9245,9245,9245,9245,9245,9245,9245,9245,9245,
  9245,9245,9245,9245,9245,9245,9245,9245,9245,9245,
],
'سُورَةُ المُطـَفِّفين':
[
  11669,11669,11669,11669,11669,11669,11669,11669,11669,11669,
  11669,11669,11669,11669,11669,11669,11669,11669,11669,11669,
  11669,11669,11669,11669,11669,11669,11669,11669,11669,11669,
  11669,11669,11669,11669,11669,11669,11669,11669,11669,11669,
],
'سُورَةُ الإنشِقاق':
  [
  7325,7325,7325,7325,7325,87325,7325,7325,7325,7325,
  7325,7325,7325,7325,7325,87325,7325,7325,7325,7325,
  7325,7325,7325,7325,7325,87325,7325,7325,7325,7325,
  ],
  'سُورَةُ البُروج':
  [
    10517,10517,10517,10517,10517,10517,4176,3624,10517,10517,10517,10517,10517,3048,3384,
  10517,10517,10517,10517,10517,10517,10517,10517,10517,10517,10517,10517,10517,5208,4824,
  ],
  
'سُورَةُ الطّارق':
[
  6317,6317,6317,6317,6317,6317,6317,6317,6317,6317,
  6317,6317,6317,6317,6317,6317,6317,6317,6317,
],
'سُورَةُ الأعلي':
[
  6677,6677,6677,6677,6677,6677,6677,6677,6677,6677,
  6677,6677,6677,6677,6677,6677,6677,6677,6677,6677,
],

'سُورَةُ الغاشِيَة':
[
  6677,6677,6677,6677,6677,6677,6677,6677,6677,6677,
  6677,6677,6677,6432,6677,6677,6677,6677,6677,6677,
  6677,6677,6677,6677,6677,6677,
],

'سُورَةُ الفَجْر':
[
  8333,8333,8333,8333,8333,8333,8333,8333,8333,8333,
  88333,8333,8333,8333,8333,8333,8333,8333,8333,8333,
  8333,8333,8333,8333,8333,8333,8333,8333,8333,8333,
  8333,8333,8333,8333,8333,
],
'سُورَةُ البَـلـَد':
[
  8381,8381,8381,8381,8381,8381,8381,8381,8381,8381,
  8381,8381,8381,8381,8381,8381,8381,8381,8381,8381,
],

'سُورَةُ الشــَّمْس':[
  3408,3648,7349,7349,7349,7349,7349,5424,3600,
  7349,7349,7349,7349,7349,7349,7349,7349,7349,
],


'سُورَةُ اللـَّيل':[
  7181,7181,7181,7181,7181,7181,7181,7181,7181,7181,
  7181,7181,7181,7181,7181,7181,7181,7181,7181,7181,
],


'سُورَةُ الضُّحي':[
  6749,6749,6749,6749,6749,6749,6749,6749,6749,6749,
  ],
'سُورَةُ الشَّرْح':[
  4925,4925,4925,4925,4925,4925,4925,4925,
  ],


  'سُورَةُ التـِّين':[
  7733,7733,7733,7733,7733,3216,3120,7733,7733,7733,
  ],
  

'سُورَةُ العَلـَق':[
  8309,8309,8309,8309,8309,8309,8309,8309,8309,8309,
  8309,8309,8309,8309,8309,8309,8309,8309,8309, 
],

'سُورَةُ القـَدر':[
 5813,5813,5813,5813,5813,5813,
],
 
'سُورَةُ البَيِّنَة':
[
  7109,7109,7109,7109,7109,7109,7109 ,7109,7109,7109,
  7109,7109,7109,7109,7109,7109,7109,7109,7109,7109,
  7109,7109,7109,
],

'سُورَةُ الزلزَلة':[
  7853,7853,7853,7853,7853,7853,7853,7853,7853,
],
  

'سُورَةُ العَادِيات':[
  12581,12581,12581,12581,12581,6072,6288,12581,12581,12581,
],
  
  'سُورَةُ القارِعَة':[
3744,7325,7325,7325,7325,7325,7325,7325,7325,7325,
  ],
  

'سُورَةُ التَكاثـُر':[
9005,9005,9005,9005,9005,9005,9005,9005,
],
  

'سُورَةُ العَصْر':[
5885,5885,5885,5885,5885,
],
  
  'سُورَةُ الهُمَزَة':[
7685,7685,7685,7685,4200,3360,7685,7685,7685,
  ],
  
'سُورَةُ الفِيل':[
  7733,7733,7733,7733,7733,
],
  
  
  'سُورَةُ قـُرَيْش':[
7325,7325,7325,7325,7325,
  ],
  
'سُورَةُ المَاعُون':[
  9965,9965,9965,9965,8544,
],
  
  'سُورَةُ الكَوْثَر':[
5309,5309,5309,
  ],
  

'سُورَةُ الكَافِرُون':[
10565,10565,10565,10565,10565,
],
  
'سُورَةُ النـَّصر':[
10373,4800,5568,10373,10373,
],  
  

'سُورَةُ المَسَد':[
  6317,6317,6317,6317,6317,
],
  

'سُورَةُ الإخْلَاص':[
  5189,5189,5189,5189,
],

  'سُورَةُ الفَلَق':[
5645,5645,5645,5645,5645,
  ],
  

'سُورَةُ النَّاس':[
  7901,7901,7901,7901,7901,
],

  'سُورَةُ الْفَاتِحَة':[
7853,7853,7853,7853,7853,7853,7853,3024,4776,
  ],
  

'آيَةَ الْكُرْسِيِّ':[
9413,9413,9413,9413,9413,9413,5400,9413,9413,9413
],
};

const List<int> soraDuration = [
  235229,
  230885,
  187157,
  139277,
  108005,
  235997,
  140669,
  150413,
  86525,
  92237,
  122717,
  198245,
  101669,
  82445,
  100661,
  58589,
  35549,
  52517,
  93989,
  34949,
  124325,
  55421,
  63893,
  54893,
  50837,
  24629,
  45821,
  39893,
  32309,
  41357,
  17693,
  38765,
  29861,
  32381,
  20189,
  26597,
  36437,
  37037,
  52805,


];


  const List <int> surasAlwahNoList = [
10,
10,
8,
6,
4,
8,
6,
6,
4,
4,
5,
7,
4,
4,
4,
2,
2,
2,

4,
2,
5,
2,

2,
2,
2,
1,
2,

1,
1,
1,
1,
1,

1,
1,
1,
1,
1,

2,
2,
];


  const List <Color> surasAlwahColorList = [

    
Color(0xff528D31),

Color(0xff9F3B43),

Color(0xff007E7F),

Color(0xff2A518A),

Color(0xff3992B0),

Color(0xff528D31),

Color(0xff004F53),

Color(0xffA8922D),

Color(0xff9CA21A),
Color(0xff9CA21A),

Color(0xff3A4481),

Color(0xff518C30),

Color(0xff2F91AA),
Color(0xff2F91AA),

Color(0xffA9005D),
Color(0xffA9005D),
Color(0xffA9005D),

Color(0xff00744A),
Color(0xff00744A),
Color(0xff00744A),

Color(0xff9E3A42),

Color(0xff007E7F),
Color(0xff007E7F),
Color(0xff007E7F),
Color(0xff007E7F),

Color(0xff2A518A),
Color(0xff2A518A),
Color(0xff2A518A),
Color(0xff2A518A),
Color(0xff2A518A),
Color(0xff2A518A),

Color(0xff3992B0),
Color(0xff3992B0),
Color(0xff3992B0),
Color(0xff3992B0),
Color(0xff3992B0),
Color(0xff3992B0),
    Color(0xff848484),
    Color(0xff004F53),
];

const Map<String,List<RowCellsModel>> moshaf =  {
'سُورَةُ النـَّبأ':[
 
    RowCellsModel
    (
    firstcell:  'عَمَّ',  
    secondcell:   "يَتَسَآءَلُونَ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
 
    RowCellsModel
    (
    firstcell:  'عَنِ',
    secondcell:   "ٱلنَّبَإِ",
    thirdcell:  'ٱلۡعَظِيمِ' ,
    fourthcell:   ' ', 
    ),

    
    RowCellsModel
    (
    firstcell:  'ٱلَّذِي',
    secondcell:   "هُمۡ",
    thirdcell:  'فِيهِ' ,
    fourthcell:   'مُخۡتَلِفُونَ',
    ),

  
    RowCellsModel
    (
    firstcell:  'كَلَّا', 
    secondcell:   "سَيَعۡلَمُونَ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',      
    ),

  
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "كَلَّا",
    thirdcell:  'سَيَعۡلَمُونَ' ,
    fourthcell:   ' ',        
    ),


  
    RowCellsModel
    (
    firstcell:  'أَلَمۡ',
    secondcell:   "نَجۡعَلِ",
    thirdcell:  'ٱلۡأَرۡضَ' ,
    fourthcell:   'مِهَٰدٗا',
    ),


  
    RowCellsModel
    (
    firstcell:  'وَٱلۡجِبَالَ',  
    secondcell:   "أَوۡتَادٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ', 
    ),


  
    RowCellsModel
    (
    firstcell:  'وَخَلَقۡنَٰكُمۡ', 
    secondcell:   "أَزۡوَٰجٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
   
    ),
  
    RowCellsModel
    (
    firstcell:  'وَجَعَلۡنَا',
    secondcell:   "نَوۡمَكُمۡ",
    thirdcell:  'سُبَاتٗا' ,
    fourthcell:   ' ',  
    ),
 
    RowCellsModel
    (
    firstcell:  'وَجَعَلۡنَا',
    secondcell:   "ٱلَّيۡلَ",
    thirdcell:  'لِبَاسٗا' ,
    fourthcell:   ' ',  
    ),
     
    RowCellsModel
    (
    firstcell:  'وَجَعَلۡنَا',
    secondcell:   "ٱلنَّهَارَ",
    thirdcell:  'مَعَاشٗا' ,
    fourthcell:   ' ',  
    ),
         
    RowCellsModel
    (
    firstcell:  'وَبَنَيۡنَا',
    secondcell:   "فَوۡقَكُمۡ",
    thirdcell:  'سَبۡعٗا' ,
    fourthcell:   'شِدَادٗا',
    ),
          
    RowCellsModel
    (
    firstcell:  'وَجَعَلۡنَا',
    secondcell:   "سِرَاجٗا",
    thirdcell:  'وَهَّاجٗا' ,
    fourthcell:   ' ',  
    ),
                
    RowCellsModel
    (
    firstcell:  'وَأَنزَلۡنَا',
    secondcell:   "مِنَ",
    thirdcell:  'ٱلۡمُعۡصِرَٰتِ'  ,
    fourthcell:   ' ',
    ),


        RowCellsModel
    (
    firstcell:  'مَآءٗ',
    secondcell:   "ثَجَّاجٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
                 
    RowCellsModel
    (
    firstcell:  'لِّنُخۡرِجَ',
    secondcell:   "بِهِۦ",
    thirdcell:  'حَبّٗا' ,
    fourthcell:   'وَنَبَاتٗا',
    ),
                     
    RowCellsModel
    (
    firstcell:  'وَجَنَّـٰتٍ',
    secondcell:   "أَلۡفَافًا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
                   
    RowCellsModel
    (
    firstcell:  'إِنَّ يَوۡمَ',
    secondcell:   "ٱلۡفَصۡلِ",
    thirdcell:  'كَانَ' ,
    fourthcell:   'مِيقَٰتٗا',
    
    ),

  
    RowCellsModel
    (
    firstcell:  'يَوۡمَ',
    secondcell:   "يُنفَخُ",
    thirdcell:  'فِي' ,
    fourthcell:   'ٱلصُّورِ',
    ),

 
    RowCellsModel
    (
    firstcell:  'فَتَأۡتُونَ', 
    secondcell:   "أَفۡوَاجٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
  
    RowCellsModel
    (
    firstcell:  'وَفُتِحَتِ',
    secondcell:   "ٱلسَّمَآءُ",
    thirdcell:  'فَكَانَتۡ' ,
    fourthcell:   'أَبۡوَٰبٗا',
    ),
   
    RowCellsModel
    (
    firstcell:  'وَسُيِّرَتِ',
    secondcell:   "ٱلۡجِبَالُ",
    thirdcell:  'فَكَانَتۡ' ,
    fourthcell:   'سَرَابًا', 
    ),
      
    RowCellsModel
    (
    firstcell:  'إِنَّ',
    secondcell:   "جَهَنَّمَ",
    thirdcell:  'كَانَتۡ' ,
    fourthcell:   'مِرۡصَادٗا',
    ),

        RowCellsModel
    (
    firstcell:  'لِّلطَّـٰغِينَ',  
    secondcell:   "مَـَٔابٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',   
    ),
 
    RowCellsModel
    (
    firstcell:  'لَّـٰبِثِينَ',
    secondcell:   "فِيهَآ",
    thirdcell:  'أَحۡقَابٗا' ,
    fourthcell:   ' ', 
    ),

    RowCellsModel
    (
    firstcell:  'لَّا',
    secondcell:   "يَذُوقُونَ",
    thirdcell:  'فِيهَا' ,
    fourthcell:   ' ',
    ),


        RowCellsModel
    (
    firstcell:  'بَرۡدٗا',
    secondcell:   "وَلَا",
    thirdcell:  'شَرَابًا' ,
    fourthcell:   ' ', 
    ),


    RowCellsModel
    (
    firstcell:  'إِلَّا',
    secondcell:   "حَمِيمٗا",
    thirdcell:  'وَغَسَّاقٗا' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'جَزَآءٗ', 
    secondcell:   "وِفَاقًا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'إِنَّهُمۡ',
    secondcell:   "كَانُواْ",
    thirdcell:  'لَا يَرۡجُونَ' ,
    fourthcell:   'حِسَابٗا',
    ),

    RowCellsModel
    (
    firstcell:  'وَكَذَّبُواْ',
    secondcell:   "بِـَٔايَٰتِنَا",
    thirdcell:  'كِذَّابٗا' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'وَكُلَّ',
    secondcell:   "شَيۡءٍ",
    thirdcell:  'أَحۡصَيۡنَٰهُ' ,
    fourthcell:   'كِتَٰبٗا',
    ),

    RowCellsModel
    (
    firstcell:  'فَذُوقُواْ',
    secondcell:   "فَلَن",
    thirdcell:  'نَّزِيدَكُمۡ' ,
    fourthcell:   'إِلَّا عَذَابًا',
    ),

    RowCellsModel
    (
    firstcell:  'إِنَّ',
    secondcell:   "لِلۡمُتَّقِينَ",
    thirdcell:  'مَفَازًا' ,
    fourthcell:   ' ', 
    ),

        RowCellsModel
    (
    firstcell:  'حَدَآئِقَ',  
    secondcell:   "وَأَعۡنَٰبٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'وَكَوَاعِبَ', 
    secondcell:   "أَتۡرَابٗا",
    thirdcell:  'وَكَأۡسٗا' ,
    fourthcell:   'دِهَاقٗا', 
    ),

    RowCellsModel
    (
    firstcell:  'لَّا',
    secondcell:   "يَسۡمَعُونَ",
    thirdcell:  'فِيهَا' ,
    fourthcell:   ' ',
    ),

    RowCellsModel
    (
    firstcell:  'لَغۡوٗا',  
    secondcell:   "وَلَا",
    thirdcell:  'كِذَّابٗا' ,
    fourthcell:   ' ',
    ),

        RowCellsModel
    (
    firstcell:  'جَزَآءٗ',
    secondcell:   "مِّن رَّبِّكَ",
    thirdcell:  'عَطَآءً' ,
    fourthcell:   'حِسَابٗا',
    ),

    RowCellsModel
    (
    firstcell:  'رَّبِّ',
    secondcell:   "ٱلسَّمَٰوَٰتِ",
    thirdcell:  'وَٱلۡأَرۡضِ' ,
    fourthcell:   'وَمَا بَيۡنَهُمَا',
    ),

    RowCellsModel
    (
    firstcell:  'ٱلرَّحۡمَٰنِۖ',
    secondcell:   "لَا يَمۡلِكُونَ",
    thirdcell:  'مِنۡهُ' ,
    fourthcell:   'خِطَابٗا',
    ),

    RowCellsModel
    (
    firstcell:  'يَوۡمَ',
    secondcell:   "يَقُومُ",
    thirdcell:  'ٱلرُّوحُ' ,
    fourthcell:   ' ',
    ),

        RowCellsModel
    (
    firstcell:  'وَٱلۡمَلَـٰٓئِكَةُ',
    secondcell:   "صَفّٗاۖ",
    thirdcell:  'لَّا' ,
    fourthcell:   'يَتَكَلَّمُونَ',
    ),

        RowCellsModel
    (
    firstcell:  'إِلَّا',
    secondcell:   "مَنۡ أَذِنَ",
    thirdcell:  'لَهُ' ,
    fourthcell:   'ٱلرَّحۡمَٰنُ',
    ),

        RowCellsModel
    (
    firstcell:  'وَقَالَ', 
    secondcell:   "صَوَابٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

    
        RowCellsModel
    (
    firstcell:  'ذَٰلِكَ',
    secondcell:   "ٱلۡيَوۡمُ",
    thirdcell:  'ٱلۡحَقُّۖ' ,
    fourthcell:   ' ',
    ),


        RowCellsModel
    (
    firstcell:  'فَمَن شَآءَ',
    secondcell:   "ٱتَّخَذَ",
    thirdcell:  'إِلَىٰ رَبِّهِۦ' ,
    fourthcell:   'مَـَٔابًا',
    ),

        RowCellsModel
    (
    firstcell:  'إِنَّآ',
    secondcell:   "أَنذَرۡنَٰكُمۡ",
    thirdcell:  'عَذَابٗا' ,
    fourthcell:   'قَرِيبٗا',
    ),

        RowCellsModel
    (
    firstcell:  'يَوۡمَ',
    secondcell:   "يَنظُرُ ٱلۡمَرۡءُ",
    thirdcell:  'مَا قَدَّمَتۡ' ,
    fourthcell:   'يَدَاهُ',  
    ),

            RowCellsModel
    (
    firstcell:  'وَيَقُولُ',
    secondcell:   "ٱلۡكَافِرُ",
    thirdcell:  'يَٰلَيۡتَنِي' ,
    fourthcell:   'كُنتُ تُرَٰبَۢا', 
    ),
],




'سُورَةُ النـّازِعات':[
 
    RowCellsModel
    (
    firstcell:  'وَٱلنَّـٰزِعَٰتِ',
    secondcell:   "غَرۡقٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ', 

    ),
 
    RowCellsModel
    (
    firstcell:  'وَٱلنَّـٰشِطَٰتِ', 
    secondcell:   "نَشۡطٗا",
    thirdcell:  ' '  ,
    fourthcell:   ' ',  
    
    ),

    
    RowCellsModel
    (
    firstcell:  'وَٱلسَّـٰبِحَٰتِ', 
    secondcell:   "سَبۡحٗا",
    thirdcell:  ' '  ,
    fourthcell:   ' ',  
   
    ),

  
    RowCellsModel
    (
    firstcell:  'فَٱلسَّـٰبِقَٰتِ',  
    secondcell:   "سَبۡقٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  

        
    ),

  
    RowCellsModel
    (
    firstcell:  'فَٱلۡمُدَبِّرَٰتِ',  
    secondcell:   "أَمۡرٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',    
        
    ),


  
    RowCellsModel
    (
    firstcell:  'يَوۡمَ',
    secondcell:   "تَرۡجُفُ",
    thirdcell:  'ٱلرَّاجِفَةُ' ,
    fourthcell:   ' ',  
    
    ),


  
    RowCellsModel
    (
    firstcell:  'تَتۡبَعُهَا',  
    secondcell:   "ٱلرَّادِفَةُ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),


  
    RowCellsModel
    (
    firstcell:  'قُلُوبٞ',
    secondcell:   "يَوۡمَئِذٖ",
    thirdcell:  'وَاجِفَةٌ' ,
    fourthcell:   ' ',  
   
    ),
  
    RowCellsModel
    (
    firstcell:  'أَبۡصَٰرُهَا',
    secondcell:   "خَٰشِعَةٞ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
 
    RowCellsModel
    (
    firstcell:  'يَقُولُونَ',
    secondcell:   "أَءِنَّا",
    thirdcell:  'لَمَرۡدُودُونَ' ,
    fourthcell:   'فِي ٱلۡحَافِرَةِ',
    ),
     
    RowCellsModel
    (
    firstcell:  'أَءِذَا',
    secondcell:   "كُنَّا",
    thirdcell:  'عِظَٰمٗا' ,
    fourthcell:   'نَّخِرَةٗ',  
    ),
         
    RowCellsModel
    (
    firstcell:  'قَالُواْ',
    secondcell:   "تِلۡكَ إِذٗا",
    thirdcell:  'كَرَّةٌ' ,
    fourthcell:   'خَاسِرَةٞ',
    ),
          
    RowCellsModel
    (
    firstcell:  'فَإِنَّمَا',
    secondcell:   "هِيَ",
    thirdcell:  'زَجۡرَةٞ' ,
    fourthcell:   'وَٰحِدَةٞ',
    ),
                
    RowCellsModel
    (
    firstcell:  'فَإِذَا',
    secondcell:   "هُم",
    thirdcell:  'بِٱلسَّاهِرَةِ' ,
    fourthcell:   ' ', 
    ),
                 
    RowCellsModel
    (
    firstcell:  'هَلۡ',
    secondcell:   "أَتَىٰكَ",
    thirdcell:  'حَدِيثُ' ,
    fourthcell:   'مُوسَىٰٓ', 
    ),
                     
    RowCellsModel
    (
    firstcell:  'إِذۡ',
    secondcell:   "نَادَىٰهُ",
    thirdcell:  'رَبُّهُۥ' ,
    fourthcell:   ' ',
    ),
                   
    RowCellsModel
    (
    firstcell:  'بِٱلۡوَادِ',
    secondcell:   "ٱلۡمُقَدَّسِ",
    thirdcell:  'طُوًى' ,
    fourthcell:   ' ',   
    ),

  
    RowCellsModel
    (
    firstcell:  'ٱذۡهَبۡ',
    secondcell:   "إِلَىٰ فِرۡعَوۡنَ",
    thirdcell:  'إِنَّهُۥ' ,
    fourthcell:   'طَغَىٰ',
    ),

 
    RowCellsModel
    (
    firstcell:  'فَقُلۡ',
    secondcell:   "هَل لَّكَ",
    thirdcell:  'إِلَىٰٓ أَن' ,
    fourthcell:   'تَزَكَّىٰ',
    ),

   
    RowCellsModel
    (
    firstcell:  'وَأَهۡدِيَكَ',
    secondcell:   "إِلَىٰ",
    thirdcell:  'رَبِّكَ' ,
    fourthcell:   'فَتَخۡشَىٰ',
    ),
      
    RowCellsModel
    (
    firstcell:  'فَأَرَىٰهُ',
    secondcell:   "ٱلۡأٓيَةَ",
    thirdcell:  'ٱلۡكُبۡرَىٰ' ,
    fourthcell:   ' ',  
    ),

        RowCellsModel
    (
    firstcell:  'فَكَذَّبَ',
    secondcell:   "وَعَصَىٰ",
    thirdcell:  ' ' ,
    fourthcell:   ' ', 
    ),
 
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "أَدۡبَرَ",
    thirdcell:  'يَسۡعَىٰ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'فَحَشَرَ',
    secondcell:   "فَنَادَىٰ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'فَقَالَ',
    secondcell:   "أَنَا۠",
    thirdcell:  'رَبُّكُمُ' ,
    fourthcell:   'ٱلۡأَعۡلَىٰ', 
    ),

    RowCellsModel
    (
    firstcell:  'فَأَخَذَهُ ٱللَّهُ',
    secondcell:   "نَكَالَ",
    thirdcell:  'ٱلۡأٓخِرَةِ' ,
    fourthcell:   'وَٱلۡأُولَىٰٓ',
    ),

    RowCellsModel
    (
    firstcell:  'إِنَّ فِي',
    secondcell:   "ذَٰلِكَ لَعِبۡرَةٗ",
    thirdcell:  'لِّمَن' ,
    fourthcell:   'يَخۡشَىٰٓ',
    ),


    RowCellsModel
    (
    firstcell:  'ءَأَنتُمۡ',
    secondcell:   "أَشَدُّ",
    thirdcell:  'خَلۡقًا' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'أَمِ',  
    secondcell:   "ٱلسَّمَآءُۚ",
    thirdcell:  'بَنَىٰهَا' ,
    fourthcell:   ' ', 
    ),

    RowCellsModel
    (
    firstcell:  'رَفَعَ',
    secondcell:   "سَمۡكَهَا",
    thirdcell:  'فَسَوَّىٰهَا' ,
    fourthcell:   ' ', 
    ),

    RowCellsModel
    (
    firstcell:  'وَأَغۡطَشَ',
    secondcell:   "لَيۡلَهَا",
    thirdcell:  'وَأَخۡرَجَ' ,
    fourthcell:   'ضُحَىٰهَا',
    ),

        RowCellsModel
    (
    firstcell:  'وَٱلۡأَرۡضَ',
    secondcell:   "بَعۡدَ",
    thirdcell:  'ذَٰلِكَ' ,
    fourthcell:   'دَحَىٰهَآ', 
    ),

    RowCellsModel
    (
    firstcell:  'أَخۡرَجَ',
    secondcell:   "مِنۡهَا",
    thirdcell:  'مَآءَهَا' ,
    fourthcell:   'وَمَرۡعَىٰهَا',
    ),

    RowCellsModel
    (
    firstcell:  'وَٱلۡجِبَالَ',  
    secondcell:   "أَرۡسَىٰهَا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'مَتَٰعٗا',
    secondcell:   "لَّكُمۡ",
    thirdcell:  'وَلِأَنۡعَٰمِكُمۡ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'فَإِذَا',
    secondcell:   "جَآءَتِ",
    thirdcell:  'ٱلطَّآمَّةُ' ,
    fourthcell:   'ٱلۡكُبۡرَىٰ', 
    ),

        RowCellsModel
    (
    firstcell:  'يَوۡمَ',
    secondcell:   "يَتَذَكَّرُ",
    thirdcell:  'ٱلۡإِنسَٰنُ' ,
    fourthcell:   'مَا سَعَىٰ',
    ),

    RowCellsModel
    (
    firstcell:  'وَبُرِّزَتِ',
    secondcell:   "ٱلۡجَحِيمُ",
    thirdcell:  'لِمَن' ,
    fourthcell:   'يَرَىٰ',
    ),

    RowCellsModel
    (
    firstcell:  'فَأَمَّا',
    secondcell:   "مَن",
    thirdcell:  'طَغَىٰ' ,
    fourthcell:   ' ', 
    ),

    RowCellsModel
    (
    firstcell:  'وَءَاثَرَ',
    secondcell:   "ٱلۡحَيَوٰةَ",
    thirdcell:  'ٱلدُّنۡيَا' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'فَإِنَّ',
    secondcell:   "ٱلۡجَحِيمَ",
    thirdcell:  'هِيَ' ,
    fourthcell:   'ٱلۡمَأۡوَىٰ', 
    ),

    RowCellsModel
    (
    firstcell:  'وَأَمَّا',
    secondcell:   "مَنۡ خَافَ",
    thirdcell:  'مَقَامَ' ,
    fourthcell:   'رَبِّهِۦ',
 
    ),

        RowCellsModel
    (
    firstcell:  'وَنَهَى',
    secondcell:   "ٱلنَّفۡسَ",
    thirdcell:  'عَنِ' ,
    fourthcell:   'ٱلۡهَوَىٰ',
    ),

        RowCellsModel
    (
    firstcell:  'فَإِنَّ',
    secondcell:   "ٱلۡجَنَّةَ",
    thirdcell:  'هِيَ' ,
    fourthcell:   'ٱلۡمَأۡوَىٰ',  
    ),

        RowCellsModel
    (
    firstcell:  'يَسۡـَٔلُونَكَ',
    secondcell:   "عَنِ ٱلسَّاعَةِ",
    thirdcell:  'أَيَّانَ' ,
    fourthcell:   'مُرۡسَىٰهَا',
    ),

        RowCellsModel
    (
    firstcell:  'فِيمَ',
    secondcell:   "أَنتَ",
    thirdcell:  'مِن' ,
    fourthcell:   'ذِكۡرَىٰهَآ', 
    ),

        RowCellsModel
    (
    firstcell:  'إِلَىٰ',
    secondcell:   "رَبِّكَ",
    thirdcell:  'مُنتَهَىٰهَآ' ,
    fourthcell:   ' ',
    ),

        RowCellsModel
    (
    firstcell:  'إِنَّمَآ',
    secondcell:   "أَنتَ",
    thirdcell:  'مُنذِرُ' ,
    fourthcell:   'مَن يَخۡشَىٰهَا',
    ),

            RowCellsModel
    (
    firstcell:  'كَأَنَّهُمۡ',
    secondcell:   "يَوۡمَ",
    thirdcell:  'يَرَوۡنَهَا' ,
    fourthcell:   ' ',
    ),


            RowCellsModel
    (
    firstcell:  'لَمۡ يَلۡبَثُوٓاْ',
    secondcell:   "إِلَّا",
    thirdcell:  'عَشِيَّةً' ,
    fourthcell:   'أَوۡ ضُحَىٰهَا',
    ),
],




'سُورَةُ عَبَس':[
 
    RowCellsModel
    (
    firstcell:  'عَبَسَ',  
    secondcell:   "وَتَوَلَّىٰٓ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),
 
    RowCellsModel
    (
    firstcell:  'أَن',
    secondcell:   "جَآءَهُ",
    thirdcell:  'ٱلۡأَعۡمَىٰ' ,
    fourthcell:   ' ', 
    
    ),

    
    RowCellsModel
    (
    firstcell:  'وَمَا',
    secondcell:   "يُدۡرِيكَ",
    thirdcell:  'لَعَلَّهُۥ' ,
    fourthcell:   'يَزَّكَّىٰٓ', 
   
    ),

  
    RowCellsModel
    (
    firstcell:  'أَوۡ',
    secondcell:   "يَذَّكَّرُ",
    thirdcell:  'فَتَنفَعَهُ' ,
    fourthcell:   'ٱلذِّكۡرَىٰٓ', 
    ),

  
    RowCellsModel
    (
    firstcell:  'أَمَّا',
    secondcell:   "مَنِ",
    thirdcell:  'ٱسۡتَغۡنَىٰ' ,
    fourthcell:   ' ',        
    ),


  
    RowCellsModel
    (
    firstcell:  'فَأَنتَ',
    secondcell:   "لَهُۥ",
    thirdcell:  'تَصَدَّىٰ' ,
    fourthcell:   ' ',  
    ),


  
    RowCellsModel
    (
    firstcell:  'وَمَا',
    secondcell:   "عَلَيۡكَ",
    thirdcell:  'أَلَّا' ,
    fourthcell:   'يَزَّكَّىٰ',
    ),


  
    RowCellsModel
    (
    firstcell:  'وَأَمَّا',
    secondcell:   "مَن",
    thirdcell:  'جَآءَكَ' ,
    fourthcell:   'يَسۡعَىٰ',  
    ),
  
    RowCellsModel
    (
    firstcell:  'وَهُوَ',
    secondcell:   "يَخۡشَىٰ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
 
    RowCellsModel
    (
    firstcell:  'فَأَنتَ',
    secondcell:   "عَنۡهُ",
    thirdcell:  'تَلَهَّىٰ' ,
    fourthcell:   ' ',   
    ),
     
    RowCellsModel
    (
    firstcell:  'كَلَّآ',
    secondcell:   "إِنَّهَا",
    thirdcell:  'تَذۡكِرَةٞ' ,
    fourthcell:   ' ',  
    ),
         
    RowCellsModel
    (
    firstcell:  'فَمَن',
    secondcell:   "شَآءَ",
    thirdcell:  'ذَكَرَهُۥ' ,
    fourthcell:   ' ', 
    ),
          
    RowCellsModel
    (
    firstcell:  'فِي',
    secondcell:   "صُحُفٖ",
    thirdcell:  'مُّكَرَّمَةٖ' ,
    fourthcell:   ' ',
    ),
                
    RowCellsModel
    (
    firstcell:  'مَّرۡفُوعَةٖ',
    secondcell:   "مُّطَهَّرَةِۭ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
                 
    RowCellsModel
    (
    firstcell:  'بِأَيۡدِي',
    secondcell:   "سَفَرَةٖ",
    thirdcell:  ' ' ,
    fourthcell:   ' ', 
    ),
                     
    RowCellsModel
    (
    firstcell:  'كِرَامِۭ', 
    secondcell:   "بَرَرَةٖ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
                   
    RowCellsModel
    (
    firstcell:  'قُتِلَ',
    secondcell:   "ٱلۡإِنسَٰنُ",
    thirdcell:  'مَآ' ,
    fourthcell:   'أَكۡفَرَهُۥ',
    
    ),

  
    RowCellsModel
    (
    firstcell:  'مِنۡ',
    secondcell:   "أَيِّ",
    thirdcell:  'شَيۡءٍ' ,
    fourthcell:   'خَلَقَهُۥ',
    ),

 
    RowCellsModel
    (
    firstcell:  'مِن',
    secondcell:   "نُّطۡفَةٍ",
    thirdcell:  'خَلَقَهُۥ' ,
    fourthcell:   'فَقَدَّرَهُۥ',
    ),
  
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "ٱلسَّبِيلَ",
    thirdcell:  'يَسَّرَهُۥ' ,
    fourthcell:   ' ', 
    ),
   
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "أَمَاتَهُۥ",
    thirdcell:  'فَأَقۡبَرَهُۥ' ,
    fourthcell:   ' ', 
    ),
      
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "إِذَا",
    thirdcell:  'شَآءَ' ,
    fourthcell:   'أَنشَرَهُۥ',  
    ),

        RowCellsModel
    (
    firstcell:  'كَلَّا',
    secondcell:   "لَمَّا",
    thirdcell:  'يَقۡضِ' ,
    fourthcell:   'مَآ أَمَرَهُۥ',
    ),
 
    RowCellsModel
    (
    firstcell:  'فَلۡيَنظُرِ',
    secondcell:   "ٱلۡإِنسَٰنُ",
    thirdcell:  'إِلَىٰ' ,
    fourthcell:   'طَعَامِهِۦٓ', 
    ),

    RowCellsModel
    (
    firstcell:  'أَنَّا',
    secondcell:   "صَبَبۡنَا",
    thirdcell:  'ٱلۡمَآءَ' ,
    fourthcell:   'صَبّٗا',
    ),

    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "شَقَقۡنَا",
    thirdcell:  'ٱلۡأَرۡضَ' ,
    fourthcell:   'شَقّٗا',  
    ),

    RowCellsModel
    (
    firstcell:  'فَأَنۢبَتۡنَا',
    secondcell:   "فِيهَا",
    thirdcell:  'حَبّٗا' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'وَعِنَبٗا',  
    secondcell:   "وَقَضۡبٗا",
    thirdcell:  'وَزَيۡتُونٗا' ,
    fourthcell:   'وَنَخۡلٗا',  
    ),

    RowCellsModel
    (
    firstcell:  'وَحَدَآئِقَ',
    secondcell:   "غُلۡبٗا",
    thirdcell:  'وَفَٰكِهَةٗ' ,
    fourthcell:   'وَأَبّٗا',   
    ),

    RowCellsModel
    (
    firstcell:  'مَّتَٰعٗا',
    secondcell:   "لَّكُمۡ",
    thirdcell:  'وَلِأَنۡعَٰمِكُمۡ' ,
    fourthcell:   ' ', 
    ),

    RowCellsModel
    (
    firstcell:  'فَإِذَا',
    secondcell:   "جَآءَتِ",
    thirdcell:  'ٱلصَّآخَّةُ' ,
    fourthcell:   ' ', 
    ),

        RowCellsModel
    (
    firstcell:  'يَوۡمَ',
    secondcell:   "يَفِرُّ",
    thirdcell:  'ٱلۡمَرۡءُ' ,
    fourthcell:   'مِنۡ أَخِيهِ',
    ),

    RowCellsModel
    (
    firstcell:  'وَأُمِّهِۦ',  
    secondcell:   "وَأَبِيهِ",
    thirdcell:  'وَصَٰحِبَتِهِۦ' ,
    fourthcell:   'وَبَنِيهِ',  
    ),

    RowCellsModel
    (
    firstcell:  'لِكُلِّ', 
    secondcell:   "ٱمۡرِيٕٖ",
    thirdcell:  'مِّنۡهُمۡ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'يَوۡمَئِذٖ',
    secondcell:   "شَأۡنٞ",
    thirdcell:  'يُغۡنِيهِ' ,
    fourthcell:   ' ',  
    ),


        RowCellsModel
    (
    firstcell:  'وُجُوهٞ',
    secondcell:   "يَوۡمَئِذٖ",
    thirdcell:  'مُّسۡفِرَةٞ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'ضَاحِكَةٞ',  
    secondcell:   "مُّسۡتَبۡشِرَةٞ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'وَوُجُوهٞ',
    secondcell:   "يَوۡمَئِذٍ",
    thirdcell:  'عَلَيۡهَا' ,
    fourthcell:   'غَبَرَةٞ',
    ),

    RowCellsModel
    (
    firstcell:  'تَرۡهَقُهَا', 
    secondcell:   "قَتَرَةٌ",
    thirdcell:  ' ' ,
    fourthcell:   ' ', 
    ),

    RowCellsModel
    (
    firstcell:  'أُوْلَـٰٓئِكَ',
    secondcell:   "هُمُ",
    thirdcell:  'ٱلۡكَفَرَةُ' ,
    fourthcell:   'ٱلۡفَجَرَةُ',
    ),
],


'سُورَةُ التـَّكْوير':[
 
    RowCellsModel
    (
    firstcell:  'إِذَا',
    secondcell:   "ٱلشَّمۡسُ",
    thirdcell:  'كُوِّرَتۡ' ,
    fourthcell:   ' ',  
    ),
 
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   " ٱلنُّجُومُ",
    thirdcell:  'ٱنكَدَرَتۡ' ,
    fourthcell:   ' ',  
    
    ),

    
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلۡجِبَالُ",
    thirdcell:  'سُيِّرَتۡ' ,
    fourthcell:   ' ',  

   
    ),

  
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   " ٱلۡعِشَارُ",
    thirdcell:  'عُطِّلَتۡ' ,
    fourthcell:   ' ',  

        
    ),

  
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   " ٱلۡوُحُوشُ",
    thirdcell:  'حُشِرَتۡ' ,
    fourthcell:   ' ',  

        
    ),


  
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   " ٱلۡبِحَارُ",
    thirdcell:  'سُجِّرَتۡ' ,
    fourthcell:   ' ',  

    
    ),


  
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلنُّفُوسُ",
    thirdcell:  'زُوِّجَتۡ' ,
    fourthcell:   ' ',  

    ),


  
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلۡمَوۡءُۥدَةُ",
    thirdcell:  'سُئِلَتۡ' ,
    fourthcell:   ' ', 

   
    ),
  
    RowCellsModel
    (
    firstcell:  'بِأَيِّ',
    secondcell:   "ذَنۢبٖ",
    thirdcell:  'قُتِلَتۡ' ,
    fourthcell:   ' ', 


    ),
 
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلصُّحُفُ",
    thirdcell:  'نُشِرَتۡ' ,
    fourthcell:   ' ', 
    ),
     
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلسَّمَآءُ",
    thirdcell:  'كُشِطَتۡ' ,
    fourthcell:   ' ',  
    ),
         
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلۡجَحِيمُ",
    thirdcell:  'سُعِّرَتۡ' ,
    fourthcell:   ' ',  
    ),
          
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلۡجَنَّةُ",
    thirdcell:  'أُزۡلِفَتۡ' ,
    fourthcell:   ' ', 
    
    ),
                
    RowCellsModel
    (
    firstcell:  'عَلِمَتۡ',
    secondcell:   "نَفۡسٞ",
    thirdcell:  'مَّآ' ,
    fourthcell:   'أَحۡضَرَتۡ',

    ),
                 
    RowCellsModel
    (
    firstcell:   "فَلَآ أُقۡسِمُ",
    secondcell:   'بِٱلۡخُنَّسِ',
    thirdcell:  "ٱلۡجَوَارِ" ,
    fourthcell:   'ٱلۡكُنَّسِ', 
    ),
                     
                   
    RowCellsModel
    (
    firstcell:  'وَٱلَّيۡلِ',
    secondcell:   "إِذَا",
    thirdcell:  'عَسۡعَسَ' ,
    fourthcell:   ' ',  
    ),

  
    RowCellsModel
    (
    firstcell:  'وَٱلصُّبۡحِ',
    secondcell:   "إِذَا",
    thirdcell:  'تَنَفَّسَ' ,
    fourthcell:   ' ',  
    ),

 
    RowCellsModel
    (
    firstcell:  'إِنَّهُۥ',
    secondcell:   "لَقَوۡلُ",
    thirdcell:  'رَسُولٖ' ,
    fourthcell:   'كَرِيمٖ',
    ),
  
    RowCellsModel
    (
    firstcell:  'ذِي قُوَّةٍ',
    secondcell:   "عِندَ",
    thirdcell:  'ذِي ٱلۡعَرۡشِ' ,
    fourthcell:   'مَكِينٖ',
  
    ),

      
    RowCellsModel
    (
    firstcell:  'مُّطَاعٖ',
    secondcell:   "ثَمَّ",
    thirdcell:  'أَمِينٖ' ,
    fourthcell:   ' ', 
    ),

        RowCellsModel
    (
    firstcell:  'وَمَا',
    secondcell:   "صَاحِبُكُم",
    thirdcell:  'بِمَجۡنُونٖ' ,
    fourthcell:   ' ',  
    ),
 
    RowCellsModel
    (
    firstcell:  'وَلَقَدۡ',
    secondcell:   "رَءَاهُ",
    thirdcell:  'بِٱلۡأُفُقِ' ,
    fourthcell:   'ٱلۡمُبِينِ',
    ),

    RowCellsModel
    (
    firstcell:  'وَمَا هُوَ',
    secondcell:   "عَلَى",
    thirdcell:  'ٱلۡغَيۡبِ' ,
    fourthcell:   'بِضَنِينٖ',
    ),

    RowCellsModel
    (
    firstcell:  'وَمَا هُوَ',
    secondcell:   "بِقَوۡلِ",
    thirdcell:  'شَيۡطَٰنٖ' ,
    fourthcell:   'رَّجِيمٖ',
    ),

    RowCellsModel
    (
    firstcell:  'فَأَيۡنَ', 
    secondcell:   "تَذۡهَبُونَ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'إِنۡ هُوَ',
    secondcell:   "إِلَّا",
    thirdcell:  'ذِكۡرٞ' ,
    fourthcell:   'لِّلۡعَٰلَمِينَ',
    ),

    RowCellsModel
    (
    firstcell:  'لِمَن',
    secondcell:   "شَآءَ ",
    thirdcell:  'مِنكُمۡ' ,
    fourthcell:   ' ',
    ),

        RowCellsModel
    (
    firstcell:  'أَن',
    secondcell:   "يَسۡتَقِيمَ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),

    RowCellsModel
    (
    firstcell:  'وَمَا تَشَآءُونَ',
    secondcell:   "إِلَّآ",
    thirdcell:  'أَن يَشَآءَ' ,
    fourthcell:   'ٱللَّهُ',
    ),

    RowCellsModel
    (
    firstcell:  'رَبُّ',
    secondcell:   "ٱلۡعَٰلَمِينَ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),
],





'سُورَةُ الإنفِطار':[
 
    RowCellsModel
    (
    firstcell:  'إِذَا',
    secondcell:   "ٱلسَّمَآءُ",
    thirdcell:  'ٱنفَطَرَتۡ' ,
    fourthcell:   ' ',  
    ),
 
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلۡكَوَاكِبُ",
    thirdcell:  'ٱنتَثَرَتۡ' ,
    fourthcell:   ' ', 

    
    ),

    
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلۡبِحَارُ",
    thirdcell:  'فُجِّرَتۡ' ,
    fourthcell:   ' ',  

   
    ),

  
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "ٱلۡقُبُورُ",
    thirdcell:  'بُعۡثِرَتۡ' ,
    fourthcell:   ' ',  

        
    ),

  
    RowCellsModel
    (
    firstcell:  'عَلِمَتۡ',
    secondcell:   "نَفۡسٞ ",
    thirdcell:  'مَّا قَدَّمَتۡ' ,
    fourthcell:   'وَأَخَّرَتۡ',
        
    ),


  
    RowCellsModel
    (
    firstcell:  'يَا أَيُّهَا',
    secondcell:   "ٱلۡإِنسَٰنُ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',

    
    ),
    
    RowCellsModel
    (
    firstcell:  'مَا',
    secondcell:   "غَرَّكَ ",
    thirdcell:  "بِرَبِّكَ" ,
    fourthcell:   'ٱلۡكَرِيمِ',
        
    ),



  
    RowCellsModel
    (
    firstcell:  'ٱلَّذِي',
    secondcell:   "خَلَقَكَ",
    thirdcell:  'فَسَوَّىٰكَ' ,
    fourthcell:   'فَعَدَلَكَ',

   
    ),
  
    RowCellsModel
    (
    firstcell:  'فِيٓ أَيِّ',
    secondcell:   "صُورَةٖ",
    thirdcell:  'مَّا شَآءَ' ,
    fourthcell:   'رَكَّبَكَ',

    ),
 

     
    RowCellsModel
    (
    firstcell:  'كَلَّا',
    secondcell:   "بَلۡ",
    thirdcell:  'تُكَذِّبُونَ' ,
    fourthcell:   'بِٱلدِّينِ',



    ),
         
    RowCellsModel
    (
    firstcell: "وَإِنَّ عَلَيۡكُمۡ",
    secondcell: 'لَحَٰفِظِينَ'  ,
    thirdcell:  "كِرَامٗا" ,
    fourthcell:  'كَٰتِبِينَ',  

    ),
          

                
    RowCellsModel
    (
    firstcell:  'يَعۡلَمُونَ',
    secondcell:   "مَا",
    thirdcell:  'تَفۡعَلُونَ' ,
    fourthcell:   ' ',  
    ),
                 
    RowCellsModel
    (
    firstcell:  'إِنَّ',
    secondcell:   "ٱلۡأَبۡرَارَ",
    thirdcell:  'لَفِي' ,
    fourthcell:   'نَعِيمٖ',
 
  
    ),
                     
    RowCellsModel
    (
    firstcell:  'وَإِنَّ',
    secondcell:   "ٱلۡفُجَّارَ",
    thirdcell:  'لَفِي' ,
    fourthcell:   'جَحِيمٖ',

    ),
                   
    RowCellsModel
    (
    firstcell:  'يَصۡلَوۡنَهَا',
    secondcell:   "يَوۡمَ",
    thirdcell:  'ٱلدِّينِ' ,
    fourthcell:   ' ', 
  
    ),

  
    RowCellsModel
    (
    firstcell:  'وَمَا',
    secondcell:   "هُمۡ",
    thirdcell:  'عَنۡهَا' ,
    fourthcell:   'بِغَآئِبِينَ',
    ),

 
    RowCellsModel
    (
    firstcell:  'وَمَآ',
    secondcell:   "أَدۡرَىٰكَ",
    thirdcell:  'مَا يَوۡمُ' ,
    fourthcell:   'ٱلدِّينِ',

  
    ),
  
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "مَآ أَدۡرَىٰكَ",
    thirdcell:  'مَا يَوۡمُ' ,
    fourthcell:   'ٱلدِّينِ'
 
    ),
   

      
    RowCellsModel
    (
    firstcell:  'يَوۡمَ',
    secondcell:   "لَا تَمۡلِكُ",
    thirdcell:  'نَفۡسٞ لِّنَفۡسٖ' ,
    fourthcell:   'شَيۡـٔٗاۖ',
    ),
 
    RowCellsModel
    (
    firstcell:  'وَٱلۡأَمۡرُ',
    secondcell:   "يَوۡمَئِذٖ",
    thirdcell:  'لِّلَّهِ' ,
    fourthcell:   ' ',
    ),
],



'سُورَةُ المُطـَفِّفين':[

    RowCellsModel
    (
    firstcell:  'وَيۡلٞ',  
    secondcell:   "لِّلۡمُطَفِّفِينَ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'ٱلَّذِينَ',
    secondcell:   "إِذَا ٱكۡتَالُواْ",
    thirdcell:  'عَلَى ٱلنَّاسِ' ,
    fourthcell:   'يَسۡتَوۡفُونَ',

    
    ),



   
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "كَالُوهُمۡ",
    thirdcell:  'أَو وَّزَنُوهُمۡ' ,
    fourthcell:   'يُخۡسِرُونَ',

          
    ),

  
    RowCellsModel
    (
    firstcell:  'أَلَا يَظُنُّ',
    secondcell:   "أُوْلَـٰٓئِكَ",
    thirdcell:  'أَنَّهُم' ,
    fourthcell:   'مَّبۡعُوثُونَ',
          
    ),


    
    RowCellsModel
    (
    firstcell:  'لِيَوۡمٍ', 
    secondcell:   "عَظِيمٖ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
  
    
    ),


   
    RowCellsModel
    (
    firstcell:  'يَوۡمَ يَقُومُ',
    secondcell:   " ٱلنَّاسُ",
    thirdcell:  'لِرَبِّ' ,
    fourthcell:   'ٱلۡعَٰلَمِينَ',

      
    ),


 
    RowCellsModel
    (
    firstcell:  'كَلَّآ',
    secondcell:   "إِنَّ",
    thirdcell:  'كِتَٰبَ' ,
    fourthcell:   'ٱلۡفُجَّارِ',
  
  
    ),
  
    RowCellsModel
    (
    firstcell:  'لَفِي', 
    secondcell:   "سِجِّينٖ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
   
    RowCellsModel
    (
    firstcell:  'وَمَآ',
    secondcell:   "أَدۡرَىٰكَ",
    thirdcell:  'مَا' ,
    fourthcell:   'سِجِّينٞ',

   
    ),
      
    RowCellsModel
    (
    firstcell:  'كِتَٰبٞ',  
    secondcell:   "مَّرۡقُومٞ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
         
    RowCellsModel
    (
    firstcell:  'وَيۡلٞ', 
    secondcell:   "يَوۡمَئِذٖ",
    thirdcell:  'لِّلۡمُكَذِّبِينَ' ,
    fourthcell:   ' ',  
      
    ),
          
    RowCellsModel
    (
    firstcell:  'ٱلَّذِينَ',
    secondcell:   "يُكَذِّبُونَ",
    thirdcell:  'بِيَوۡمِ' ,
    fourthcell:   'ٱلدِّينِ',

     
    ),
                
    RowCellsModel
    (
    firstcell:  'وَمَا يُكَذِّبُ',
    secondcell:   "بِهِۦٓ إِلَّا",
    thirdcell:  "كُلُّ مُعۡتَدٍ" ,
    fourthcell:   'أَثِيمٍ',
    ),
                  

                     
    RowCellsModel
    (
    firstcell:  'إِذَا',
    secondcell:   "تُتۡلَىٰ",
    thirdcell:  'عَلَيۡهِ' ,
    fourthcell:   'ءَايَٰتُنَا'
    ),
                       
    RowCellsModel
    (
    firstcell:  'قَالَ',
    secondcell:   "أَسَٰطِيرُ",
    thirdcell:  'ٱلۡأَوَّلِينَ' ,
    fourthcell:   ' ',  
    
    ),

   
    RowCellsModel
    (
    firstcell:  'كَلَّاۖ بَلۡۜ',
    secondcell:   "رَانَ",
    thirdcell:  'عَلَىٰ' ,
    fourthcell:   'قُلُوبِهِم',

    ),

        
    RowCellsModel
    (
    firstcell:  'مَّا',
    secondcell:   "كَانُواْ",
    thirdcell:  'يَكۡسِبُونَ' ,
    fourthcell:   ' ',
    ),

       
    RowCellsModel
    (
    firstcell:  'كَلَّآ إِنَّهُمۡ',
    secondcell:   "عَن رَّبِّهِمۡ",
    thirdcell:  'يَوۡمَئِذٖ' ,
    fourthcell:   'لَّمَحۡجُوبُونَ',
    ),



          
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "إِنَّهُمۡ",
    thirdcell:  'لَصَالُواْ' ,
    fourthcell:   'ٱلۡجَحِيمِ'
    ),

            
    RowCellsModel
    (
    firstcell:  'ثُمَّ يُقَالُ',
    secondcell:   "هَٰذَا ٱلَّذِي",
    thirdcell:   "كُنتُم بِهِۦ" ,
    fourthcell:   'تُكَذِّبُونَ',
    ),

 

                   
    RowCellsModel
    (
    firstcell:  'كَلَّآ',
    secondcell:   "إِنَّ كِتَٰبَ",
    thirdcell:  'ٱلۡأَبۡرَارِ' ,
    fourthcell:   'لَفِي عِلِّيِّينَ',

    ),

                  
    RowCellsModel
    (
    firstcell:  'وَمَآ',
    secondcell:   "أَدۡرَىٰكَ",
    thirdcell:  'مَا' ,
    fourthcell:   'عِلِّيُّونَ',
    ),

                 
    RowCellsModel
    (
    firstcell:  'كِتَٰبٞ', 
    secondcell:   "مَّرۡقُومٞ",
    thirdcell:  'يَشۡهَدُهُ' ,
    fourthcell:   'ٱلۡمُقَرَّبُونَ',

    ),


                      
    RowCellsModel
    (
    firstcell:  'إِنَّ',
    secondcell:   "ٱلۡأَبۡرَارَ",
    thirdcell:  'لَفِي' ,
    fourthcell:   'نَعِيمٍ',
    ),

      
    RowCellsModel
    (
    firstcell:  'عَلَى',
    secondcell:   " ٱلۡأَرَآئِكِ",
    thirdcell:  'يَنظُرُونَ' ,
    fourthcell:   ' ', 
    ),

       
    RowCellsModel
    (
    firstcell:  'تَعۡرِفُ فِي',
    secondcell:   "وُجُوهِهِمۡ",
    thirdcell:  'نَضۡرَةَ' ,
    fourthcell:   'ٱلنَّعِيمِ',
    ),

    
    RowCellsModel
    (
    firstcell:  'يُسۡقَوۡنَ',
    secondcell:   "مِن",
    thirdcell:  'رَّحِيقٖ' ,
    fourthcell:   'مَّخۡتُومٍ',

    ),

        
    RowCellsModel
    (
    firstcell:  'خِتَٰمُهُۥ',
    secondcell:   "مِسۡكٞۚ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
 
    ),


        RowCellsModel
    (
    firstcell:  'وَفِي',
    secondcell:   "ذَٰلِكَ",
    thirdcell:  'فَلۡيَتَنَافَسِ' ,
    fourthcell:   'ٱلۡمُتَنَٰفِسُونَ',
    ),
                       


   
    RowCellsModel
    (
    firstcell:  'وَمِزَاجُهُۥ',
    secondcell:   "مِن",
    thirdcell:  'تَسۡنِيمٍ' ,
    fourthcell:   ' ',  
    ),


          
    RowCellsModel
    (
    firstcell:  'عَيۡنٗا',
    secondcell:   "يَشۡرَبُ",
    thirdcell:  'بِهَا' ,
    fourthcell:   'ٱلۡمُقَرَّبُونَ', 
    ),

            
    RowCellsModel
    (
    firstcell:  'إِنَّ',
    secondcell:   "ٱلَّذِينَ",
    thirdcell:  'أَجۡرَمُواْ' ,
    fourthcell:   ' ',
    ),


                  
    RowCellsModel
    (
    firstcell:  'كَانُواْ',
    secondcell:   "مِنَ ٱلَّذِينَ",
    thirdcell:  'ءَامَنُواْ' ,
    fourthcell:   'يَضۡحَكُونَ', 
    ),

                      
    RowCellsModel
    (
    firstcell:  'وَإِذَا',
    secondcell:   "مَرُّواْ",
    thirdcell:  'بِهِمۡ' ,
    fourthcell:   'يَتَغَامَزُونَ',  
    ),

                           
    RowCellsModel
    (
    firstcell:  'وَإِذَا ٱنقَلَبُوٓاْ',
    secondcell:   "إِلَىٰٓ أَهۡلِهِمُ",
    thirdcell:  'ٱنقَلَبُواْ' ,
    fourthcell:   'فَكِهِينَ',
    ),


                             
    RowCellsModel
    (
    firstcell:  'وَإِذَا رَأَوۡهُمۡ',
    secondcell:   "قَالُوٓاْ",
    thirdcell:  'إِنَّ هَـٰٓؤُلَآءِ' ,
    fourthcell:   'لَضَآلُّونَ'
    
    ),


                                
    RowCellsModel
    (
    firstcell:  'وَمَآ',
    secondcell:   "أُرۡسِلُواْ",
    thirdcell:  'عَلَيۡهِمۡ' ,
    fourthcell:   'حَٰفِظِينَ',
    ),

                                   
    RowCellsModel
    (
    firstcell:  'فَٱلۡيَوۡمَ',
    secondcell:   "ٱلَّذِينَ ءَامَنُواْ",
    thirdcell:  'مِنَ ٱلۡكُفَّارِ' ,
    fourthcell:   'يَضۡحَكُونَ',
    ),



       
    RowCellsModel
    (
    firstcell:  'عَلَى',
    secondcell:   "ٱلۡأَرَآئِكِ",
    thirdcell:  'يَنظُرُونَ' ,
    fourthcell:   ' ',
    ),

   
    RowCellsModel
    (
    firstcell:  'هَلۡ ثُوِّبَ',
    secondcell:   "ٱلۡكُفَّارُ",
    thirdcell:  'مَا كَانُواْ' ,
    fourthcell:   'يَفۡعَلُونَ',
 
    ),
],





'سُورَةُ الإنشِقاق':[

    RowCellsModel
    (
    firstcell:  'إِذَا', 
    secondcell:   " ٱلسَّمَآءُ",
    thirdcell:  'ٱنشَقَّتۡ' ,
    fourthcell:   ' ',  
    ),
  
    RowCellsModel
    (
    firstcell:  'وَأَذِنَتۡ',  
    secondcell:   "لِرَبِّهَا",
    thirdcell:  'وَحُقَّتۡ' ,
    fourthcell:   ' ',  
    ),

   
    RowCellsModel
    (
    firstcell:  'وَإِذَا', 
    secondcell:   "ٱلۡأَرۡضُ",
    thirdcell:  'مُدَّتۡ' ,
    fourthcell:   ' ',  
    ),

 
    RowCellsModel
    (
    firstcell:  'وَأَلۡقَتۡ',
    secondcell:   "مَا فِيهَا",
    thirdcell:  'وَتَخَلَّتۡ' ,
    fourthcell:   ' ',
    ),

  
    RowCellsModel
    (
    firstcell:  'وَأَذِنَتۡ',  
    secondcell:   "لِرَبِّهَا",
    thirdcell:  'وَحُقَّتۡ' ,
    fourthcell:   ' ',  
    ),


  
    RowCellsModel
    (
    firstcell:  'يَا أَيُّهَا',
    secondcell:   "ٱلۡإِنسَٰنُ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),

    RowCellsModel
    (
    firstcell:  'إِنَّكَ',  
    secondcell:   "كَادِحٌ",
    thirdcell:  'إِلَىٰ' ,
    fourthcell:   'رَبِّكَ',  
    ),

    
    RowCellsModel
    (
    firstcell:  'كَدۡحٗا',
    secondcell:   "فَمُلَٰقِيهِ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),


    
    RowCellsModel
    (
    firstcell:  'فَأَمَّا مَنۡ',
    secondcell:   "أُوتِيَ",
    thirdcell:  'كِتَٰبَهُۥ' ,
    fourthcell:   'بِيَمِينِهِۦ'
    ),
   
    RowCellsModel
    (
    firstcell:  'فَسَوۡفَ',
    secondcell:   "يُحَاسَبُ",
    thirdcell:  'حِسَابٗا' ,
    fourthcell:   'يَسِيرٗا',
    ),
   
    RowCellsModel
    (
    firstcell:  'وَيَنقَلِبُ',
    secondcell:   "إِلَىٰٓ",
    thirdcell:  'أَهۡلِهِۦ' ,
    fourthcell:   'مَسۡرُورٗا',

    
    ),
        
    RowCellsModel
    (
    firstcell:  'وَأَمَّا مَنۡ',
    secondcell:   "أُوتِيَ كِتَٰبَهُۥ",
    thirdcell:  'وَرَآءَ' ,
    fourthcell:   'ظَهۡرِهِۦ',

    ),
        
           
    RowCellsModel
    (
    firstcell:  'فَسَوۡفَ', 
    secondcell:   "يَدۡعُواْ",
    thirdcell:  'ثُبُورٗا' ,
    fourthcell:   ' ', 
    
    ),
                   
    RowCellsModel
    (
    firstcell:  'وَيَصۡلَىٰ',  
    secondcell:   "سَعِيرًا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
   
    ),
                 
    RowCellsModel
    (
    firstcell:  'إِنَّهُۥ',
    secondcell:   "كَانَ فِيٓ",
    thirdcell:  'أَهۡلِهِۦ' ,
    fourthcell:   'مَسۡرُورًا',
    ),
                        
    RowCellsModel
    (
    firstcell:  'إِنَّهُۥ',
    secondcell:   "ظَنَّ ",
    thirdcell:  'أَن لَّن' ,
    fourthcell:   'يَحُورَ',
    ),
                      
    RowCellsModel
    (
    firstcell:  'بَلَىٰٓۚ',
    secondcell:   "إِنَّ رَبَّهُۥ",
    thirdcell:  'كَانَ بِهِۦ' ,
    fourthcell:   'بَصِيرٗا',
    
    ),

      
    RowCellsModel
    (
    firstcell:  'فَلَآ',  
    secondcell:   "أُقۡسِمُ",
    thirdcell:  'بِٱلشَّفَقِ' ,
    fourthcell:   ' ',  
    ),

     
    RowCellsModel
    (
    firstcell:  'وَٱلَّيۡلِ', 
    secondcell:   "وَمَا",
    thirdcell:  'وَسَقَ' ,
    fourthcell:   ' ',  
  
    ),


          
    RowCellsModel
    (
    firstcell:  'وَٱلۡقَمَرِ', 
    secondcell:   "إِذَا",
    thirdcell:  'ٱتَّسَقَ' ,
    fourthcell:   ' ',  
    ),
              
    RowCellsModel
    (
    firstcell:  'لَتَرۡكَبُنَّ',
    secondcell:   "طَبَقًا",
    thirdcell:  'عَن' ,
    fourthcell:   'طَبَقٖ',
    ),
                   
    RowCellsModel
    (
    firstcell:  'فَمَا',
    secondcell:   "لَهُمۡ",
    thirdcell:  'لَا' ,
    fourthcell:   'يُؤۡمِنُونَ',
    ),


                      
    RowCellsModel
    (
    firstcell:  'وَإِذَا قُرِئَ',
    secondcell:   "عَلَيۡهِمُ",
    thirdcell:  'ٱلۡقُرۡءَانُ' ,
    fourthcell:   'لَا يَسۡجُدُونَۤ',
     
    ),
  

    
    RowCellsModel
    (
    firstcell:  'بَلِ ٱلَّذِينَ',
    secondcell:   "كَفَرُواْ",
    thirdcell:  'يُكَذِّبُونَ' ,
    fourthcell:   ' ',
    ),

       
    RowCellsModel
    (
    firstcell:  'وَٱللَّهُ',
    secondcell:   "أَعۡلَمُ",
    thirdcell:  'بِمَا' ,
    fourthcell:   'يُوعُونَ',
   
    ),
       
    RowCellsModel
    (
    firstcell:  'فَبَشِّرۡهُم', 
    secondcell:   "بِعَذَابٍ",
    thirdcell:  'أَلِيمٍ' ,
    fourthcell:   ' ',  
        
    ),

           
    RowCellsModel
    (
    firstcell:  'إِلَّا',
    secondcell:   "ٱلَّذِينَ",
    thirdcell:  'ءَامَنُواْ' ,
    fourthcell:   ' ',  
   
    ),


        RowCellsModel
    (
    firstcell:  'وَعَمِلُواْ', 
    secondcell:   "ٱلصَّـٰلِحَٰتِ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
        
    ),
    
    RowCellsModel
    (
    firstcell:  'لَهُمۡ',
    secondcell:   "أَجۡرٌ",
    thirdcell:  'غَيۡرُ' ,
    fourthcell:   'مَمۡنُونِۭ',
       
    ),
        RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],




'سُورَةُ البُروج':[
 
    RowCellsModel
    (
    firstcell:  'وَٱلسَّمَآءِ',
    secondcell:   "ذَاتِ",
    thirdcell:  'ٱلۡبُرُوجِ' ,
    fourthcell:   ' ',  
    ),
 
    RowCellsModel
    (
    firstcell:  'وَٱلۡيَوۡمِ', 
    secondcell:   "ٱلۡمَوۡعُودِ",
    thirdcell:  ' ' ,
    fourthcell:   ' ', 
    
    ),

    
    RowCellsModel
    (
    firstcell:  'وَشَاهِدٖ',  
    secondcell:   "وَمَشۡهُودٖ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
   
    ),

  
    RowCellsModel
    (
    firstcell:  'قُتِلَ',
    secondcell:   "أَصۡحَٰبُ",
    thirdcell:  'ٱلۡأُخۡدُودِ' ,
    fourthcell:   ' ',   
    ),

  
    RowCellsModel
    (
    firstcell:  'ٱلنَّارِ',
    secondcell:   "ذَاتِ",
    thirdcell:  'ٱلۡوَقُودِ' ,
    fourthcell:   ' ', 
    ),


  
    RowCellsModel
    (
    firstcell:  'إِذۡ',
    secondcell:   "هُمۡ",
    thirdcell:  'عَلَيۡهَا' ,
    fourthcell:   'قُعُودٞ',
    ),


  
    RowCellsModel
    (
    firstcell:  'وَهُمۡ',
    secondcell:   "عَلَىٰ",
    thirdcell:  'مَا' ,
    fourthcell:   'يَفۡعَلُونَ',
    ),


  
    RowCellsModel
    (
    firstcell:  'بِٱلۡمُؤۡمِنِينَ', 
    secondcell:   "شُهُودٞ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
   
    ),
  
    RowCellsModel
    (
    firstcell:  'وَمَا',
    secondcell:   "نَقَمُواْ",
    thirdcell:  'مِنۡهُمۡ' ,
    fourthcell:   'إِلَّآ',
    ),
 
    RowCellsModel
    (
    firstcell:  'أَن يُؤۡمِنُواْ',
    secondcell:   "بِٱللَّهِ",
    thirdcell:  'ٱلۡعَزِيزِ' ,
    fourthcell:   'ٱلۡحَمِيدِ',
    ),
     
    RowCellsModel
    (
    firstcell:  'ٱلَّذِي لَهُۥ',
    secondcell:   "مُلۡكُ",
    thirdcell:  'ٱلسَّمَٰوَٰتِ' ,
    fourthcell:   'وَٱلۡأَرۡضِۚ',
    ),
         
    RowCellsModel
    (
    firstcell:  'وَٱللَّهُ',
    secondcell:   "عَلَىٰ كُلِّ",
    thirdcell:  'شَيۡءٖ' ,
    fourthcell:   'شَهِيدٌ',
 
    ),

                
    RowCellsModel
    (
    firstcell:  'إِنَّ ٱلَّذِينَ',
    secondcell:   "فَتَنُواْ", 
    thirdcell:  'ٱلۡمُؤۡمِنِينَ' ,
    fourthcell:   'وَٱلۡمُؤۡمِنَٰتِ',
    ),
                 
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "لَمۡ",
    thirdcell:  'يَتُوبُواْ' ,
    fourthcell:   ' '
    ),
                     
    RowCellsModel
    (
    firstcell:  'فَلَهُمۡ',
    secondcell:   "عَذَابُ",
    thirdcell:  'جَهَنَّمَ' ,
    fourthcell:   ' ',
    ),
                   
    RowCellsModel
    (
    firstcell:  'وَلَهُمۡ', 
    secondcell:   "عَذَابُ",
    thirdcell:  'ٱلۡحَرِيقِ' ,
    fourthcell:   ' ',  
    ),

  
    RowCellsModel
    (
    firstcell:  'إِنَّ ٱلَّذِينَ',
    secondcell:   "ءَامَنُواْ",
    thirdcell:  'وَعَمِلُواْ' ,
    fourthcell:   'ٱلصَّـٰلِحَٰتِ',
    ),

 
    RowCellsModel
    (
    firstcell:  'لَهُمۡ جَنَّـٰتٞ',
    secondcell:   "تَجۡرِي مِن",
    thirdcell:  'تَحۡتِهَا' ,
    fourthcell:   'ٱلۡأَنۡهَٰرُۚ',
  
    ),
  
   
    RowCellsModel
    (
    firstcell:  'ذَٰلِكَ', 
    secondcell:   "ٱلۡفَوۡزُ",
    thirdcell:  'ٱلۡكَبِيرُ' ,
    fourthcell:   ' ',  
    ),
      
    RowCellsModel
    (
    firstcell:  'إِنَّ',
    secondcell:   "بَطۡشَ",
    thirdcell:  'رَبِّكَ' ,
    fourthcell:   'لَشَدِيدٌ',

    ),
 
    RowCellsModel
    (
    firstcell:  'إِنَّهُۥ',
    secondcell:   "هُوَ",
    thirdcell:  'يُبۡدِئُ' ,
    fourthcell:   'وَيُعِيدُ',
    ),
    
    RowCellsModel
    (
    firstcell:  'وَهُوَ',
    secondcell:   "ٱلۡغَفُورُ",
    thirdcell:  'ٱلۡوَدُودُ' ,
    fourthcell:   ' ',  
    ),
         
    RowCellsModel
    (
    firstcell:  'ذُو',
    secondcell:   "ٱلۡعَرۡشِ",
    thirdcell:  'ٱلۡمَجِيدُ' ,
    fourthcell:   ' ',  
    ),

    RowCellsModel
    (
    firstcell:  'فَعَّالٞ',
    secondcell:   "لِّمَا",
    thirdcell:  'يُرِيدُ' ,
    fourthcell:   ' ',
    ),
    
    RowCellsModel
    (
    firstcell:  'هَلۡ',
    secondcell:   "أَتَىٰكَ",
    thirdcell:  'حَدِيثُ' ,
    fourthcell:   'ٱلۡجُنُودِ',
    ),
       
    RowCellsModel
    (
    firstcell:  'فِرۡعَوۡنَ', 
    secondcell:   "وَثَمُودَ",
    thirdcell:  ' ' ,
    fourthcell:   ' ', 
    ),
     
    RowCellsModel
    (
    firstcell:  'بَلِ',
    secondcell:   "ٱلَّذِينَ",
    thirdcell:  'كَفَرُواْ' ,
    fourthcell:   'فِي تَكۡذِيبٖ',
    ),

    RowCellsModel
    (
    firstcell:  'وَٱللَّهُ',
    secondcell:   "مِن",
    thirdcell:  'وَرَآئِهِم' ,
    fourthcell:   'مُّحِيطُۢ',
    ),
      
    RowCellsModel
    (
    firstcell:  'بَلۡ',
    secondcell:   "هُوَ",
    thirdcell:  'قُرۡءَانٞ' ,
    fourthcell:   'مَّجِيدٞ',
    ),
       
    RowCellsModel
    (
    firstcell:  'فِي',
    secondcell:   "لَوۡحٖ",
    thirdcell:  'مَّحۡفُوظِۭ' ,
    fourthcell:   ' ', 
    ),
],



'سُورَةُ الطّارق':[
  
    RowCellsModel
    (
    firstcell:  'وَٱلسَّمَآءِ', 
    secondcell:   "وَٱلطَّارِقِ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),
   
    RowCellsModel
    (
    firstcell:  'وَمَآ',
    secondcell:   "أَدۡرَىٰكَ",
    thirdcell:  'مَا' ,
    fourthcell:   'ٱلطَّارِقُ',
    ),

  
    RowCellsModel
    (
    firstcell:  'ٱلنَّجۡمُ', 
    secondcell:   "ٱلثَّاقِبُ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

  
    RowCellsModel
    (
    firstcell:  'إِن',
    secondcell:   "كُلُّ",
    thirdcell:  'نَفۡسٖ' ,
    fourthcell:   ' ',
        
    ),

   
    RowCellsModel
    (
    firstcell:  'لَّمَّا',
    secondcell:   "عَلَيۡهَا",
    thirdcell:  'حَافِظٞ' ,
    fourthcell:   ' ',  
    ),



    RowCellsModel
    (
    firstcell:  'فَلۡيَنظُرِ',
    secondcell:   "ٱلۡإِنسَٰنُ",
    thirdcell:  'مِمَّ' ,
    fourthcell:   'خُلِقَ',

    
    ),



    RowCellsModel
    (
    firstcell:  'خُلِقَ',
    secondcell:   "مِن",
    thirdcell:  'مَّآءٖ' ,
    fourthcell:   'دَافِقٖ',
    ),


  
    RowCellsModel
    (
    firstcell:  'يَخۡرُجُ',
    secondcell:   "مِنۢ بَيۡنِ",
    thirdcell:  'ٱلصُّلۡبِ' ,
    fourthcell:   'وَٱلتَّرَآئِبِ',
    ),
  
    RowCellsModel
    (
    firstcell:  'إِنَّهُۥ',
    secondcell:   "عَلَىٰ",
    thirdcell:  'رَجۡعِهِۦ' ,
    fourthcell:   'لَقَادِرٞ',
    ),
    
    RowCellsModel
    (
    firstcell:  'يَوۡمَ',
    secondcell:   "تُبۡلَى",
    thirdcell:  'ٱلسَّرَآئِرُ' ,
    fourthcell:   ' ',
    ),
        
    RowCellsModel
    (
    firstcell:  'فَمَا لَهُۥ',
    secondcell:   "مِن قُوَّةٖ",
    thirdcell:  'وَلَا' ,
    fourthcell:   'نَاصِرٖ',
    ),

           
    RowCellsModel
    (
    firstcell:  'وَٱلسَّمَآءِ',
    secondcell:   "ذَاتِ",
    thirdcell:  'ٱلرَّجۡعِ' ,
    fourthcell:   ' ',
    ),
                 
    RowCellsModel
    (
    firstcell:  'وَٱلۡأَرۡضِ',
    secondcell:   " ذَاتِ",
    thirdcell:  'ٱلصَّدۡعِ' ,
    fourthcell:   ' ', 
    ),
                    
    RowCellsModel
    (
    firstcell:  'إِنَّهُۥ',
    secondcell:   "لَقَوۡلٞ",
    thirdcell:  'فَصۡلٞ' ,
    fourthcell:   ' ', 
    ),
                       
    RowCellsModel
    (
    firstcell:  'وَمَا',
    secondcell:   "هُوَ",
    thirdcell:  'بِٱلۡهَزۡلِ' ,
    fourthcell:   ' ',
    ),
                      
    RowCellsModel
    (
    firstcell:  'إِنَّهُمۡ',
    secondcell:   "يَكِيدُونَ",
    thirdcell:  'كَيۡدٗا' ,
    fourthcell:   ' ',
    ),

    
    RowCellsModel
    (
    firstcell:  'وَأَكِيدُ',  
    secondcell:   "كَيۡدٗا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),

        
    RowCellsModel
    (
    firstcell:  'فَمَهِّلِ',
    secondcell:   "ٱلۡكَٰفِرِينَ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),

        RowCellsModel
    (
    firstcell:  'أَمۡهِلۡهُمۡ',
    secondcell:   "رُوَيۡدَۢا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],



'سُورَةُ الأعلي':[
 
    RowCellsModel
    (
    firstcell:  'سَبِّحِ',
    secondcell:   "ٱسۡمَ",
    thirdcell:  'رَبِّكَ' ,
    fourthcell:   'ٱلۡأَعۡلَى',
    ),
    
    RowCellsModel
    (
    firstcell:  'ٱلَّذِي', 
    secondcell:   "خَلَقَ",
    thirdcell:  'فَسَوَّىٰ' ,
    fourthcell:   ' ',  
    ),

   
    RowCellsModel
    (
    firstcell:  'وَٱلَّذِي',  
    secondcell:   "قَدَّرَ",
    thirdcell:  'فَهَدَىٰ' ,
    fourthcell:   ' ', 
    ),

    
    RowCellsModel
    (
    firstcell:  'وَٱلَّذِيٓ',
    secondcell:   "أَخۡرَجَ",
    thirdcell:  'ٱلۡمَرۡعَىٰ' ,
    fourthcell:   ' ', 
    ),

   
    RowCellsModel
    (
    firstcell:  'فَجَعَلَهُۥ',
    secondcell:   " غُثَآءً",
    thirdcell:  'أَحۡوَىٰ' ,
    fourthcell:   ' ',  
    ),


    
    RowCellsModel
    (
    firstcell:  'سَنُقۡرِئُكَ',
    secondcell:   "فَلَا",
    thirdcell:  'تَنسَىٰٓ' ,
    fourthcell:   ' ',  
    ),


  
    RowCellsModel
    (
    firstcell:  'إِلَّا',
    secondcell:   "مَا",
    thirdcell:  'شَآءَ' ,
    fourthcell:   'ٱللَّهُۚ',
    ),


  
    RowCellsModel
    (
    firstcell:  'إِنَّهُۥ',
    secondcell:   "يَعۡلَمُ",
    thirdcell:  'ٱلۡجَهۡرَ' ,
    fourthcell:   'وَمَا يَخۡفَىٰ',
    ),
  
    RowCellsModel
    (
    firstcell:  'وَنُيَسِّرُكَ', 
    secondcell:   "لِلۡيُسۡرَىٰ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
   
    RowCellsModel
    (
     firstcell:  'فَذَكِّرۡ',
    secondcell:   "إِن",
    thirdcell:  'نَّفَعَتِ' ,
    fourthcell:   'ٱلذِّكۡرَىٰ',
   
    ),
      
    RowCellsModel
    (
    firstcell:  'سَيَذَّكَّرُ',
    secondcell:   "مَن",
    thirdcell:  'يَخۡشَىٰ' ,
    fourthcell:   ' ',

    ),
            
    RowCellsModel
    (
    firstcell:  'وَيَتَجَنَّبُهَا', 
    secondcell:   "ٱلۡأَشۡقَى",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  
    ),
          
    RowCellsModel
    (
    firstcell:  'ٱلَّذِي',
    secondcell:   "يَصۡلَى",
    thirdcell:  'ٱلنَّارَ' ,
    fourthcell:   'ٱلۡكُبۡرَىٰ',
    ),
                  
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "لَا يَمُوتُ",
    thirdcell:  'فِيهَا' ,
    fourthcell:   'وَلَا يَحۡيَىٰ',
    ),
                   
                    
    RowCellsModel
    (
    firstcell:  'قَدۡ',
    secondcell:   "أَفۡلَحَ",
    thirdcell:  'مَن' ,
    fourthcell:   'تَزَكَّىٰ',
    ),
                      
    RowCellsModel
    (
    firstcell:  'وَذَكَرَ',
    secondcell:   "ٱسۡمَ",
    thirdcell:  'رَبِّهِۦ' ,
    fourthcell:   'فَصَلَّىٰ',
    
    ),

  
    RowCellsModel
    (
    firstcell:  'بَلۡ',
    secondcell:   "تُؤۡثِرُونَ",
    thirdcell:  'ٱلۡحَيَوٰةَ' ,
    fourthcell:   'ٱلدُّنۡيَا',
    ),

        
    RowCellsModel
    (
    firstcell:  'وَٱلۡأٓخِرَةُ',
    secondcell:   "خَيۡرٞ",
    thirdcell:  'وَأَبۡقَىٰٓ' ,
    fourthcell:   ' ', 
    ),

        
    RowCellsModel
    (
    firstcell:  'إِنَّ هَٰذَا',
    secondcell:   "لَفِي",
    thirdcell:  'ٱلصُّحُفِ' ,
    fourthcell:   'ٱلۡأُولَىٰ',
    ),


    
    RowCellsModel
    (
    firstcell:  'صُحُفِ',
    secondcell:   "إِبۡرَٰهِيمَ",
    thirdcell:  'وَمُوسَىٰ' ,
    fourthcell:   ' ',  
    ),
],



'سُورَةُ الغاشِيَة':[

    RowCellsModel
    (
    firstcell:  'هَلۡ',
    secondcell:   "أَتَىٰكَ",
    thirdcell:  'حَدِيثُ' ,
    fourthcell:   'ٱلۡغَٰشِيَةِ',
    ),
    
    RowCellsModel
    (
    firstcell:  'وُجُوهٞ',  
    secondcell:   "يَوۡمَئِذٍ",
    thirdcell:  'خَٰشِعَةٌ' ,
    fourthcell:   ' ',
    ),

  
    RowCellsModel
    (
    firstcell:  'عَامِلَةٞ', 
    secondcell:   "نَّاصِبَةٞ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',           
    ),

   
    RowCellsModel
    (
    firstcell:  'تَصۡلَىٰ',
    secondcell:   "نَارًا",
    thirdcell:  'حَامِيَةٗ' ,
    fourthcell:   ' ', 
    ),

    
    RowCellsModel
    (
    firstcell:  'تُسۡقَىٰ',
    secondcell:   "مِنۡ",
    thirdcell:  'عَيۡنٍ' ,
    fourthcell:   'ءَانِيَةٖ',
    ),


  
    RowCellsModel
    (
    firstcell:  'لَّيۡسَ لَهُمۡ',
    secondcell:   "طَعَامٌ",
    thirdcell:  'إِلَّا مِن' ,
    fourthcell:   'ضَرِيعٖ',

    ),


    
    RowCellsModel
    (
    firstcell:  'لَّا يُسۡمِنُ',
    secondcell:   "وَلَا يُغۡنِي",
    thirdcell:  'مِن' ,
    fourthcell:   'جُوعٖ',
    ),
   
    RowCellsModel
    (
    firstcell:  'وُجُوهٞ',  
    secondcell:   "يَوۡمَئِذٖ",
    thirdcell:  'نَّاعِمَةٞ' ,
    fourthcell:   ' ', 
    ),
       
    RowCellsModel
    (
    firstcell:  'لِّسَعۡيِهَا',  
    secondcell:   "رَاضِيَةٞ",
    thirdcell:  ' ' ,
    fourthcell:   ' ', 
    ),
          
    RowCellsModel
    (
    firstcell:  'فِي',  
    secondcell:   "جَنَّةٍ",
    thirdcell:  'عَالِيَةٖ' ,
    fourthcell:   ' ', 
    ),
           
    RowCellsModel
    (
    firstcell:  'لَّا',
    secondcell:   "تَسۡمَعُ",
    thirdcell:  'فِيهَا' ,
    fourthcell:   'لَٰغِيَةٗ',
    ),
                   
    RowCellsModel
    (
    firstcell:  'فِيهَا', 
    secondcell:   "عَيۡنٞ",
    thirdcell:  'جَارِيَةٞ' ,
    fourthcell:   ' ',  
    ),
                 
    RowCellsModel
    (
    firstcell:  'فِيهَا', 
    secondcell:   "سُرُرٞ",
    thirdcell:  'مَّرۡفُوعَةٞ' ,
    fourthcell:   ' ', 
    ),
                     
    RowCellsModel
    (
    firstcell:  'وَأَكۡوَابٞ',
    secondcell:   "مَّوۡضُوعَةٞ",
    thirdcell:  'وَنَمَارِقُ' ,
    fourthcell:   'مَصۡفُوفَةٞ', 
    ),
                       

  
    RowCellsModel
    (
    firstcell:  'وَزَرَابِيُّ',  
    secondcell:   "مَبۡثُوثَةٌ",
    thirdcell:  ' ' ,
    fourthcell:   ' ', 
    ),

      
    RowCellsModel
    (
    firstcell:  'أَفَلَا يَنظُرُونَ',
    secondcell:   "إِلَى ٱلۡإِبِلِ",
    thirdcell:  'كَيۡفَ' ,
    fourthcell:   'خُلِقَتۡ',
    ),



            
    RowCellsModel
    (
    firstcell:  'وَإِلَى',
    secondcell:   "ٱلسَّمَآءِ",
    thirdcell:  'كَيۡفَ' ,
    fourthcell:   'رُفِعَتۡ',
    ),
               
    RowCellsModel
    (
    firstcell:  'وَإِلَى',
    secondcell:   "ٱلۡجِبَالِ",
    thirdcell:  'كَيۡفَ' ,
    fourthcell:   'نُصِبَتۡ',
    ),
                 
    RowCellsModel
    (
    firstcell:  'وَإِلَى',
    secondcell:   "ٱلۡأَرۡضِ",
    thirdcell:  'كَيۡفَ' ,
    fourthcell:   'سُطِحَتۡ',
    ),


                      
    RowCellsModel
    (
    firstcell:  'فَذَكِّرۡ',
    secondcell:   "إِنَّمَآ",
    thirdcell:  'أَنتَ' ,
    fourthcell:   'مُذَكِّرٞ',
     
    ),
   
    RowCellsModel
    (
    firstcell:  'لَّسۡتَ',  
    secondcell:   "عَلَيۡهِم",
    thirdcell:  'بِمُصَيۡطِرٍ' ,
    fourthcell:   ' ',
    ),

    
    RowCellsModel
    (
    firstcell:  'إِلَّا',
    secondcell:   "مَن",
    thirdcell:  'تَوَلَّىٰ' ,
    fourthcell:   'وَكَفَرَ',
    ),

       
    RowCellsModel
    (
    firstcell:  'فَيُعَذِّبُهُ',
    secondcell:   "ٱللَّهُ",
    thirdcell:  'ٱلۡعَذَابَ' ,
    fourthcell:   'ٱلۡأَكۡبَرَ',
   
    ),
        
    RowCellsModel
    (
    firstcell:  'إِنَّ',  
    secondcell:   "إِلَيۡنَآ",
    thirdcell:  'إِيَابَهُمۡ' ,
    fourthcell:   ' ',  
    ),

          
    RowCellsModel
    (
    firstcell:  'ثُمَّ',
    secondcell:   "إِنَّ",
    thirdcell:  'عَلَيۡنَا' ,
    fourthcell:   'حِسَابَهُم',
    ),
],




'سُورَةُ الفَجْر':[
 
    RowCellsModel
    (
    firstcell:  'وَٱلۡفَجۡرِ',  
    secondcell:   "وَلَيَالٍ",
    thirdcell:  'عَشۡرٖ' , 
    fourthcell:   ' ',  
    ),
 
   
    RowCellsModel
    (
    firstcell:  'وَٱلشَّفۡعِ', 
    secondcell:   "وَٱلۡوَتۡرِ",
    thirdcell:  'وَٱلَّيۡلِ' ,
    fourthcell:   'إِذَا يَسۡرِ', 
    ),

   
    RowCellsModel
    (
    firstcell:  'هَلۡ',
    secondcell:   "فِي ذَٰلِكَ",
    thirdcell:  'قَسَمٞ' ,
    fourthcell:   'لِّذِي حِجۡرٍ',
    ),


    
   
    RowCellsModel
    (
    firstcell:  'أَلَمۡ تَرَ',
    secondcell:   "كَيۡفَ",
    thirdcell:  'فَعَلَ رَبُّكَ' ,
    fourthcell:   'بِعَادٍ',
    ),

   
    RowCellsModel
    (
    firstcell:  'إِرَمَ', 
    secondcell:   "ذَاتِ",
    thirdcell:  'ٱلۡعِمَادِ' ,
    fourthcell:   ' ', 
    ),
    
    RowCellsModel
    (
    firstcell:  'ٱلَّتِي',
    secondcell:   "لَمۡ يُخۡلَقۡ",
    thirdcell:  'مِثۡلُهَا' ,
    fourthcell:   'فِي ٱلۡبِلَٰدِ',
    ),

           
    RowCellsModel
    (
    firstcell:  'وَثَمُودَ',
    secondcell:   "ٱلَّذِينَ جَابُواْ",
    thirdcell:  'ٱلصَّخۡرَ' ,
    fourthcell:   'بِٱلۡوَادِ',
    ),
        
    RowCellsModel
    (
    firstcell:  'وَفِرۡعَوۡنَ',  
    secondcell:   "ذِي",
    thirdcell:  'ٱلۡأَوۡتَادِ' ,
    fourthcell:   ' ',  
    ),
                
    RowCellsModel
    (
    firstcell:  'ٱلَّذِينَ',
    secondcell:   "طَغَوۡاْ",
    thirdcell:  'فِي' ,
    fourthcell:   'ٱلۡبِلَٰدِ'
    ),
                  
    RowCellsModel
    (
    firstcell:  'فَأَكۡثَرُواْ',
    secondcell:   "فِيهَا",
    thirdcell:  'ٱلۡفَسَادَ' ,
    fourthcell:   ' ', 
    ),
                      
    RowCellsModel
    (
    firstcell:  'فَصَبَّ',
    secondcell:   "عَلَيۡهِمۡ رَبُّكَ",
    thirdcell:  'سَوۡطَ' ,
    fourthcell:   'عَذَابٍ',
    ),
                     
    RowCellsModel
    (
    firstcell:  'إِنَّ',  
    secondcell:   " رَبَّكَ",
    thirdcell:  'لَبِٱلۡمِرۡصَادِ' ,
    fourthcell:   ' ', 
    ),
   
    RowCellsModel
    (
    firstcell:  'فَأَمَّا',
    secondcell:   "ٱلۡإِنسَٰنُ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),


        RowCellsModel
    (
    firstcell:  'إِذَا',  
    secondcell:   "مَا",
    thirdcell:  'ٱبۡتَلَىٰهُ' ,
    fourthcell:   'رَبُّهُۥ', 
    ),
       
    RowCellsModel
    (
    firstcell:  'فَأَكۡرَمَهُۥ',
    secondcell:   "وَنَعَّمَهُۥ",
    thirdcell:  "فَيَقُولُ رَبِّيٓ" ,
    fourthcell:   'أَكۡرَمَنِ',
   
    ),
      
         
    RowCellsModel
    (
    firstcell:  'وَأَمَّآ',
    secondcell:   "إِذَا",
    thirdcell:  'مَا' ,
    fourthcell:   'ٱبۡتَلَىٰهُ',

    ),
               
    RowCellsModel
    (
    firstcell:  'فَقَدَرَ',
    secondcell:   "عَلَيۡهِ",
    thirdcell:  'رِزۡقَهُۥ' ,
    fourthcell:   ' ',
    ),
                 
    RowCellsModel
    (
    firstcell:  'فَيَقُولُ',  
    secondcell:   "رَبِّيٓ",
    thirdcell:  'أَهَٰنَنِ' ,
    fourthcell:   ' ', 
    ),
                    
    RowCellsModel
    (
    firstcell:  'كَلَّاۖ',
    secondcell:   "بَل",
    thirdcell:  'لَّاتُكۡرِمُونَ' ,
    fourthcell:   'ٱلۡيَتِيمَ',
    ),
                       
    RowCellsModel
    (
    firstcell:  'وَلَا تَحَـٰٓضُّونَ',
    secondcell:   " عَلَىٰ",
    thirdcell:  'طَعَامِ' ,
    fourthcell:   'ٱلۡمِسۡكِينِ',
    ),
                             
    RowCellsModel
    (
    firstcell:  'وَتَأۡكُلُونَ',
    secondcell:   "ٱلتُّرَاثَ",
    thirdcell:  'أَكۡلٗا' ,
    fourthcell:   'لَّمّٗا',
    ),
                                
    RowCellsModel
    (
    firstcell:  'وَتُحِبُّونَ',
    secondcell:   "ٱلۡمَالَ",
    thirdcell:  'حُبّٗا' ,
    fourthcell:   'جَمّٗا',
    ),
                                  
    RowCellsModel
    (
    firstcell:  'كَلَّآۖ',
    secondcell:   "إِذَا دُكَّتِ",
    thirdcell:  'ٱلۡأَرۡضُ' ,
    fourthcell:   'دَكّٗا دَكّٗا',
    ),

                                    
    RowCellsModel
    (
    firstcell:  'وَجَآءَ',
    secondcell:   "رَبُّكَ",
    thirdcell:  'وَٱلۡمَلَكُ' ,
    fourthcell:   'صَفّٗا صَفّٗا', 
    ),
                                     
    RowCellsModel
    (
    firstcell:  'وَجِاْيٓءَ',
    secondcell:   "يَوۡمَئِذِۭ",
    thirdcell:  'بِجَهَنَّمَۚ' ,
    fourthcell:   ' ',
    ),


        RowCellsModel
    (
    firstcell:  'يَوۡمَئِذٖ',
    secondcell:   "يَتَذَكَّرُ",
    thirdcell:  'ٱلۡإِنسَٰنُ' ,
    fourthcell:   ' ', 
    ),
                                      
    RowCellsModel
    (
    firstcell:  'وَأَنَّىٰ',
    secondcell:   "لَهُ",
    thirdcell:  'ٱلذِّكۡرَىٰ' ,
    fourthcell:   ' ',
    ),
                                       
    RowCellsModel
    (
    firstcell:  'يَقُولُ',
    secondcell:   "يَٰلَيۡتَنِي",
    thirdcell:  'قَدَّمۡتُ' ,
    fourthcell:   'لِحَيَاتِي',
    ),
                                      
    RowCellsModel
    (
    firstcell:  'فَيَوۡمَئِذٖ',
    secondcell:   "لَّا يُعَذِّبُ",
    thirdcell:  'عَذَابَهُۥٓ' ,
    fourthcell:   'أَحَدٞ'
    ),
                                          
    RowCellsModel
    (
    firstcell:  'وَلَا يُوثِقُ',
    secondcell:   "وَثَاقَهُۥٓ",
    thirdcell:  'أَحَدٞ' ,
    fourthcell:   ' ',
    ),
                                              
    RowCellsModel
    (
    firstcell:  'يَا',  
    secondcell:   "أَيَّتُهَا",
    thirdcell:  'ٱلنَّفۡسُ' ,
    fourthcell:   'ٱلۡمُطۡمَئِنَّةُ',
    ),
                                                   
    RowCellsModel
    (
    firstcell:  'ٱرۡجِعِيٓ',
    secondcell:   "إِلَىٰ رَبِّكِ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),

    RowCellsModel
    (
    firstcell:  'رَاضِيَةٗ',  
    secondcell:   "مَّرۡضِيَّةٗ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),
                                                  
    RowCellsModel
    (
    firstcell:  'فَٱدۡخُلِي', 
    secondcell:   "فِي",
    thirdcell:  'عِبَٰدِي' ,
    fourthcell:   ' ',
    ),
                                                       
    RowCellsModel
    (
    firstcell:  'وَٱدۡخُلِي', 
    secondcell:   "جَنَّتِي",
    thirdcell:  ' ' ,
    fourthcell:   ' ',  

    ),
],



'سُورَةُ البَـلـَد':[
 
    RowCellsModel
    (
    firstcell:  'لَآ',
    secondcell:   "أُقۡسِمُ",
    thirdcell:  'بِهَٰذَا' ,
    fourthcell:   'ٱلۡبَلَدِ',
    ),
  
    RowCellsModel
    (
    firstcell:  'وَأَنتَ',
    secondcell:   "حِلُّۢ",
    thirdcell:  'بِهَٰذَا' ,
    fourthcell:   'ٱلۡبَلَدِ',
    ),
  
    RowCellsModel
    (
    firstcell:  'وَوَالِدٖ',  
    secondcell:   "وَمَا",
    thirdcell:  'وَلَدَ' ,
    fourthcell:   ' ', 
    ),

   
    RowCellsModel
    (
    firstcell:  'لَقَدۡ',
    secondcell:   "خَلَقۡنَا",
    thirdcell:  'ٱلۡإِنسَٰنَ' ,
    fourthcell:   'فِي كَبَدٍ',
    ),

  
    RowCellsModel
    (
    firstcell:  'أَيَحۡسَبُ أَن',
    secondcell:   "لَّن يَقۡدِرَ",
    thirdcell:  'عَلَيۡهِ' ,
    fourthcell:   'أَحَدٞ',
   
    ),
  
    RowCellsModel
    (
    firstcell:  'يَقُولُ',
    secondcell:   "أَهۡلَكۡتُ",
    thirdcell:  'مَالٗا' ,
    fourthcell:   'لُّبَدًا',

    ),
   
    RowCellsModel
    (
    firstcell:  'أَيَحۡسَبُ',
    secondcell:   "أَن لَّمۡ",
    thirdcell:  'يَرَهُۥٓ' ,
    fourthcell:   'أَحَدٌ',
    ),
   
    RowCellsModel
    (
    firstcell:  'أَلَمۡ',
    secondcell:   "نَجۡعَل",
    thirdcell:  'لَّهُۥ' ,
    fourthcell:   'عَيۡنَيۡنِ',
    ),
  
    RowCellsModel
    (
    firstcell:  'وَلِسَانٗا',  
    secondcell:   "وَشَفَتَيۡنِ",
    thirdcell:  'وَهَدَيۡنَٰهُ' ,
    fourthcell:   'ٱلنَّجۡدَيۡنِ',

    ),
       
           
    RowCellsModel
    (
    firstcell:  'فَلَا',  
    secondcell:   "ٱقۡتَحَمَ",
    thirdcell:  'ٱلۡعَقَبَةَ' ,
    fourthcell:   ' ', 
    ),
            
    RowCellsModel
    (
    firstcell:  'وَمَآ أَدۡرَىٰكَ',
    secondcell:   "مَا ٱلۡعَقَبَةُ",
    thirdcell:  'فَكُّ' ,
    fourthcell:   'رَقَبَةٍ',
    ),
                 
                 
    RowCellsModel
    (
    firstcell:  'أَوۡ إِطۡعَٰمٞ',
    secondcell:   "فِي يَوۡمٖ",
    thirdcell:  'ذِي' ,
    fourthcell:   'مَسۡغَبَةٖ',
    ),

                     
    RowCellsModel
    (
    firstcell:  'يَتِيمٗا', 
    secondcell:   "ذَا",
    thirdcell:  'مَقۡرَبَةٍ' ,
    fourthcell:   ' ', 
    ),
  
    RowCellsModel
    (
    firstcell:  'أَوۡ',
    secondcell:   "مِسۡكِينٗا",
    thirdcell:  'ذَا' ,
    fourthcell:   'مَتۡرَبَةٖ',
    ),
     
    RowCellsModel
    (
    firstcell:  'ثُمَّ كَانَ',
    secondcell:   "مِنَ",
    thirdcell:  'ٱلَّذِينَ' ,
    fourthcell:   'ءَامَنُواْ',
    ),
       
    RowCellsModel
    (
    firstcell:  'وَتَوَاصَوۡاْ',
    secondcell:   "بِٱلصَّبۡرِ",
    thirdcell:  'وَتَوَاصَوۡاْ' ,
    fourthcell:   'بِٱلۡمَرۡحَمَةِ',
    ),
            
    RowCellsModel
    (
    firstcell:  'أُوْلَـٰٓئِكَ', 
    secondcell:   "أَصۡحَٰبُ",
    thirdcell:  'ٱلۡمَيۡمَنَةِ' ,
    fourthcell:   ' ', 
    ),
             
    RowCellsModel
    (
    firstcell:  'وَٱلَّذِينَ',
    secondcell:   "كَفَرُواْ",
    thirdcell:  'بِـَٔايَٰتِنَا' ,
    fourthcell:   ' ',
    ),
                 
    RowCellsModel
    (
    firstcell:  'هُمۡ',  
    secondcell:   "أَصۡحَٰبُ",
    thirdcell:  'ٱلۡمَشۡـَٔمَةِ' ,
    fourthcell:   ' '
    ),
                       
    RowCellsModel
    (
    firstcell:  'عَلَيۡهِمۡ',
    secondcell:   "نَارٞ",
    thirdcell:  'مُّؤۡصَدَةُۢ' ,
    fourthcell:   ' ',   
    ),
],


'سُورَةُ الشــَّمْس':[
 
    RowCellsModel
    (
    firstcell:  'وَٱلشَّمۡسِ',
    secondcell:   "وَضُحَىٰهَا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),
  
    RowCellsModel
    (
    firstcell:  'وَٱلۡقَمَرِ',
    secondcell:   "إِذَا",
    thirdcell:  'تَلَىٰهَا' ,
    fourthcell:   ' ',
    ),
 
    RowCellsModel
    (
    firstcell:  'وَٱلنَّهَارِ',  
    secondcell:   "إِذَا",
    thirdcell:  'جَلَّىٰهَا' ,
    fourthcell:   ' ', 
    ),

  
    RowCellsModel
    (
    firstcell:  'وَٱلَّيۡلِ',  
    secondcell:   "إِذَا",
    thirdcell:  'يَغۡشَىٰهَا' ,
    fourthcell:   ' ',  
    ),

   
    RowCellsModel
    (
    firstcell:  'وَٱلسَّمَآءِ',
    secondcell:   "وَمَا",
    thirdcell:  'بَنَىٰهَا' ,
    fourthcell:   ' ',  
    ),
    
    RowCellsModel
    (
    firstcell:  'وَٱلۡأَرۡضِ',  
    secondcell:   "وَمَا",
    thirdcell:  'طَحَىٰهَا' ,
    fourthcell:   ' ', 
    ),
    
    RowCellsModel
    (
    firstcell:  'وَنَفۡسٖ', 
    secondcell:   "وَمَا",
    thirdcell:  'سَوَّىٰهَا' ,
    fourthcell:   ' ',  
    ),
  
    RowCellsModel
    (
    firstcell:  'فَأَلۡهَمَهَا', 
    secondcell:   "فُجُورَهَا",
    thirdcell:  'وَتَقۡوَىٰهَا' ,
    fourthcell:   'قَدۡ',  
    ),
    
    RowCellsModel
    (
    firstcell:  'أَفۡلَحَ',
    secondcell:   "مَن",
    thirdcell:  'زَكَّىٰهَا' ,
    fourthcell:   ' '
    ),
   
    RowCellsModel
    (
    firstcell:  'وَقَدۡ',
    secondcell:   "خَابَ",
    thirdcell:  'مَن' ,
    fourthcell:   'دَسَّىٰهَا',
    ),
      
    RowCellsModel
    (
    firstcell:  'كَذَّبَتۡ', 
    secondcell:   "ثَمُودُ",
    thirdcell:  'بِطَغۡوَىٰهَآ' ,
    fourthcell:   ' ', 
    ),
         
    RowCellsModel
    (
    firstcell:  'إِذِ', 
    secondcell:   "ٱنۢبَعَثَ",
    thirdcell:  'أَشۡقَىٰهَا' ,
    fourthcell:   ' ', 
    ),
           
    RowCellsModel
    (
    firstcell:  'فَقَالَ',
    secondcell:   "لَهُمۡ",
    thirdcell:  'رَسُولُ' ,
    fourthcell:   'ٱللَّهِ',
    ),
                   
    RowCellsModel
    (
    firstcell:  'نَاقَةَ', 
    secondcell:   "ٱللَّهِ",
    thirdcell:  'وَسُقۡيَٰهَا' ,
    fourthcell:   ' ',  
    ),
                   
    RowCellsModel
    (
    firstcell:  'فَكَذَّبُوهُ',
    secondcell:   "فَعَقَرُوهَا",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),


        RowCellsModel
    (
    firstcell:  'فَدَمۡدَمَ', 
    secondcell:   "عَلَيۡهِمۡ",
    thirdcell:  'رَبُّهُم' ,
    fourthcell:   'بِذَنۢبِهِمۡ',  
    ),
                        
    RowCellsModel
    (
    firstcell:  'فَسَوَّىٰهَا', 
    secondcell:   ' ',
    thirdcell:  ' ' ,
    fourthcell:   ' ', 
    ),
                        
    RowCellsModel
    (
    firstcell:  'وَلَا',  
    secondcell:   "يَخَافُ",
    thirdcell:  'عُقۡبَٰهَا' ,
    fourthcell:   ' ', 
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],



'سُورَةُ اللـَّيل':[

    RowCellsModel
    (
    firstcell:  'وَٱلَّيۡلِ',
    secondcell:   "إِذَا",
    thirdcell:  'يَغۡشَىٰ' ,
    fourthcell:   ' ',
    ),
 
    RowCellsModel
    (
    firstcell:  'وَٱلنَّهَارِ',
    secondcell:   "إِذَا",
    thirdcell:  'تَجَلَّىٰ' ,
    fourthcell:   ' ',
    ),
  
    RowCellsModel
    (
    firstcell:  'وَمَا',
    secondcell:   "خَلَقَ",
    thirdcell:  'ٱلذَّكَرَ' ,
    fourthcell:   'وَٱلۡأُنثَىٰٓ',

    ),

   
    RowCellsModel
    (
    firstcell:  'إِنَّ',
    secondcell:   "سَعۡيَكُمۡ",
    thirdcell:  'لَشَتَّىٰ' ,
    fourthcell:   ' ',
     
    ),

   
    RowCellsModel
    (
    firstcell:  'فَأَمَّا',
    secondcell:   "مَنۡ",
    thirdcell:  'أَعۡطَىٰ' ,
    fourthcell:   'وَٱتَّقَىٰ',
 
    ),
  
    RowCellsModel
    (
    firstcell:  'وَصَدَّقَ',
    secondcell:   "بِٱلۡحُسۡنَىٰ",
    thirdcell:  'فَسَنُيَسِّرُهُۥ' ,
    fourthcell:   'لِلۡيُسۡرَىٰ',
    ),
   
  
    RowCellsModel
    (
    firstcell:  'وَأَمَّا',
    secondcell:   "مَنۢ",
    thirdcell:  'بَخِلَ' ,
    fourthcell:   'وَٱسۡتَغۡنَىٰ',

    ),
  
    RowCellsModel
    (
    firstcell:  'وَكَذَّبَ',
    secondcell:   "بِٱلۡحُسۡنَىٰ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),
  
    RowCellsModel
    (
    firstcell:  'فَسَنُيَسِّرُهُۥ',
    secondcell:   "لِلۡعُسۡرَىٰ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',

    ),
        
    RowCellsModel
    (
    firstcell:  'وَمَا يُغۡنِي',
    secondcell:   "عَنۡهُ مَالُهُۥٓ",
    thirdcell:  'إِذَا' ,
    fourthcell:   'تَرَدَّىٰٓ',
  
    ),
          

         
    RowCellsModel
    (
    firstcell:  'إِن',
    secondcell:   "عَلَيۡنَا",
    thirdcell:  'لَلۡهُدَىٰ' ,
    fourthcell:   ' ',
    ),
                  
    RowCellsModel
    (
    firstcell:  'وَإِنَّ',
    secondcell:   "لَنَا",
    thirdcell:  'لَلۡأٓخِرَةَ' ,
    fourthcell:   'وَٱلۡأُولَىٰ',


    ),
                   
    RowCellsModel
    (
    firstcell:  'فَأَنذَرۡتُكُمۡ',
    secondcell:   "نَارٗا",
    thirdcell:  'تَلَظَّىٰ' ,
    fourthcell:   ' ',
    ),
                        
    RowCellsModel
    (
    firstcell:  'لَا',
    secondcell:   "يَصۡلَىٰهَآ",
    thirdcell:  'إِلَّا' ,
    fourthcell:   'ٱلۡأَشۡقَى',
    ),
                      
    RowCellsModel
    (
    firstcell:  'ٱلَّذِي',
    secondcell:   " كَذَّبَ",
    thirdcell:  'وَتَوَلَّىٰ' ,
    fourthcell:   ' ',
    ),
   
    RowCellsModel
    (
    firstcell:  'وَسَيُجَنَّبُهَا',
    secondcell:   "ٱلۡأَتۡقَى",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
    ),
  
    RowCellsModel
    (
    firstcell:  'ٱلَّذِي',
    secondcell:   "يُؤۡتِي",
    thirdcell:  'مَالَهُۥ' ,
    fourthcell:   'يَتَزَكَّىٰ',

    ),
 
    RowCellsModel
    (
    firstcell:  'وَمَا لِأَحَدٍ',
    secondcell:   "عِندَهُۥ",
    thirdcell:  'مِن نِّعۡمَةٖ' ,
    fourthcell:   'تُجۡزَىٰٓ',
    
    ),
       
            
    RowCellsModel
    (
    firstcell:  'إِلَّا ٱبۡتِغَآءَ',
    secondcell:   "وَجۡهِ",
    thirdcell:  'رَبِّهِ' ,
    fourthcell:   'ٱلۡأَعۡلَىٰ',
    ),
                
    RowCellsModel
    (
    firstcell:  'وَلَسَوۡفَ',
    secondcell:   "يَرۡضَىٰ",
    thirdcell:  ' ' ,
    fourthcell:   ' ',
  
    ),
],



'سُورَةُ الضُّحي':[
 
    RowCellsModel
    (
    firstcell:  'وَٱلضُّحَىٰ',
    secondcell:   "وَٱلَّيۡلِ",
    thirdcell:  'إِذَا' ,
    fourthcell:   'سَجَىٰ',
    
    ),
  
    RowCellsModel
    (
    firstcell:  'مَا',
    secondcell:   "وَدَّعَكَ",
    thirdcell:  'رَبُّكَ' ,
    fourthcell:   'وَمَا قَلَىٰ',

    ),

   
    RowCellsModel
    (
    firstcell:  'وَلَلۡأٓخِرَةُ',
    secondcell:   "خَيۡرٞ",
    thirdcell:  'لَّكَ' ,
    fourthcell:   'مِنَ ٱلۡأُولَىٰ',
    ),

    
    RowCellsModel
    (
    firstcell:  'وَلَسَوۡفَ',
    secondcell:   "يُعۡطِيكَ",
    thirdcell:  'رَبُّكَ' ,
    fourthcell:   'فَتَرۡضَىٰٓ',
    ),
 
    RowCellsModel
    (
    firstcell:  'أَلَمۡ',
    secondcell:   "يَجِدۡكَ",
    thirdcell:  'يَتِيمٗا' ,
    fourthcell:   'فَـَٔاوَىٰ',
   
    ),
    
    RowCellsModel
    (
    firstcell:  'وَوَجَدَكَ',
    secondcell:   "ضَآلّٗا",
    thirdcell:  'فَهَدَىٰ' ,
    fourthcell:   ' ',
    ),
   
    RowCellsModel
    (
    firstcell:  'وَوَجَدَكَ',
    secondcell:   "عَآئِلٗا",
    thirdcell:  'فَأَغۡنَىٰ' ,
    fourthcell:   ' ',
    ),
   
    RowCellsModel
    (
    firstcell:  'فَأَمَّا',
    secondcell:   "ٱلۡيَتِيمَ",
    thirdcell:  'فَلَا' ,
    fourthcell:   'تَقۡهَرۡ',

    ),
    
    RowCellsModel
    (
    firstcell:  'وَأَمَّا',
    secondcell:   "ٱلسَّآئِلَ",
    thirdcell:  'فَلَا' ,
    fourthcell:   'تَنۡهَرۡ',
    ),
       
    RowCellsModel
    (
    firstcell:  'وَأَمَّا',
    secondcell:   "بِنِعۡمَةِ",
    thirdcell:  'رَبِّكَ' ,
    fourthcell:   'فَحَدِّثۡ',
   
    ),
],




'سُورَةُ الشَّرْح':[
  
    RowCellsModel
    (
    firstcell: 'أَلَمۡ',
    secondcell:  "نَشۡرَحۡ",
    thirdcell: 'لَكَ' ,
    fourthcell:  'صَدۡرَكَ',  
    ),
    
    RowCellsModel
    (
    firstcell: 'وَوَضَعۡنَا',
    secondcell:  "عَنكَ",
    thirdcell: 'وِزۡرَكَ' ,
    fourthcell:' ',
    ),
    
    RowCellsModel
    (
    firstcell: 'ٱلَّذِيٓ',
    secondcell:  "أَنقَضَ",
    thirdcell: 'ظَهۡرَكَ' ,
    fourthcell:  ' ',
    ),

  
    RowCellsModel
    (
    firstcell: 'وَرَفَعۡنَا',
    secondcell:  "لَكَ",
    thirdcell: 'ذِكۡرَكَ' ,
    fourthcell:  ' ',
    ),

  
    RowCellsModel
    (
    firstcell:  'فَإِنَّ',
    secondcell:   "مَعَ",
    thirdcell:  'ٱلۡعُسۡرِ' ,
    fourthcell:   'يُسۡرًا',

    ),
  
    RowCellsModel
    (
    firstcell:  'إِنَّ',
    secondcell:   "مَعَ",
    thirdcell:  'ٱلۡعُسۡرِ' ,
    fourthcell:   'يُسۡرٗا',
    ),
    
    RowCellsModel
    (
    firstcell:  'فَإِذَا',
    secondcell:   "فَرَغۡتَ",
    thirdcell:  'فَٱنصَبۡ' ,
    fourthcell:   ' ',
    ),
    
    RowCellsModel
    (
    firstcell:  'وَإِلَىٰ',
    secondcell:   "رَبِّكَ",
    thirdcell:  'فَٱرۡغَب' ,
    fourthcell:   ' ',
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],






'سُورَةُ التـِّين':[
 
    RowCellsModel
    (
    firstcell: 'وَٱلتِّينِ',
    secondcell:  "وَٱلزَّيۡتُونِ",
    thirdcell: 'وَطُورِ' ,
    fourthcell:  'سِينِينَ',
    ),
    
    RowCellsModel
    (
    firstcell: 'وَهَٰذَا',
    secondcell:  "ٱلۡبَلَدِ",
    thirdcell: 'ٱلۡأَمِينِ' ,
    fourthcell:  ' ',
    ),

   
    RowCellsModel
    (
    firstcell: 'لَقَدۡ',
    secondcell:  "خَلَقۡنَا",
    thirdcell: 'ٱلۡإِنسَٰنَ' ,
    fourthcell:  ' ',
    ),

   
    RowCellsModel
    (
    firstcell: 'فِيٓ',
    secondcell: "أَحۡسَنِ",
    thirdcell: 'تَقۡوِيمٖ' ,
    fourthcell:  ' ',
    ),
    
    RowCellsModel
    (
    firstcell: 'ثُمَّ',
    secondcell:  "رَدَدۡنَٰهُ",
    thirdcell: 'أَسۡفَلَ' ,
    fourthcell:  'سَٰفِلِينَ',
    ),
    
    RowCellsModel
    (
    firstcell: 'إِلَّا',
    secondcell:  "ٱلَّذِينَ",
    thirdcell: 'ءَامَنُواْ' ,
    fourthcell: ' ',
    ),
    
    RowCellsModel
    (
    firstcell: 'وَعَمِلُواْ',
    secondcell:  "ٱلصَّـٰلِحَٰتِ",
    thirdcell: ' ' ,
    fourthcell: ' ',
    ),


    RowCellsModel
    (
    firstcell: 'فَلَهُمۡ',
    secondcell:  "أَجۡرٌ",
    thirdcell:'غَيۡرُ' ,
    fourthcell:  'مَمۡنُونٖ',
    ),
 
    RowCellsModel
    (
    firstcell: 'فَمَا',
    secondcell: "يُكَذِّبُكَ",
    thirdcell:'بَعۡدُ' ,
    fourthcell:  'بِٱلدِّينِ',
    ),
   
    RowCellsModel
    (
    firstcell: 'أَلَيۡسَ',
    secondcell:  "ٱللَّهُ",
    thirdcell: 'بِأَحۡكَمِ' ,
    fourthcell:  'ٱلۡحَٰكِمِينَ',
    
    ),
],



'سُورَةُ العَلـَق':[
 
    RowCellsModel
    (
    firstcell: 'ٱقۡرَأۡ',
    secondcell:  "بِٱسۡمِ رَبِّكَ",
    thirdcell: 'ٱلَّذِي' ,
    fourthcell:  'خَلَقَ',
    ),
   
    RowCellsModel
    (
    firstcell: 'خَلَقَ',
    secondcell:  "ٱلۡإِنسَٰنَ",
    thirdcell: 'مِنۡ' ,
    fourthcell:  'عَلَقٍ',

    ),
   
    RowCellsModel
    (
    firstcell:'ٱقۡرَأۡ',
    secondcell:  "وَرَبُّكَ",
    thirdcell: 'ٱلۡأَكۡرَمُ' ,
    fourthcell:  ' ',
    ),

   
    RowCellsModel
    (
    firstcell:'ٱلَّذِي',
    secondcell:  "عَلَّمَ",
    thirdcell: 'بِٱلۡقَلَمِ' ,
    fourthcell: ' ',
    ),

    
    RowCellsModel
    (
    firstcell: 'عَلَّمَ',
    secondcell:  "ٱلۡإِنسَٰنَ",
    thirdcell: 'مَا لَمۡ' ,
    fourthcell:  'يَعۡلَمۡ',
    ),
   
    RowCellsModel
    (
    firstcell: 'كَلَّآ',
    secondcell:  "إِنَّ",
    thirdcell: 'ٱلۡإِنسَٰنَ' ,
    fourthcell:  'لَيَطۡغَىٰٓ',
    ),
  
    RowCellsModel
    (
    firstcell: 'أَن',
    secondcell:  "رَّءَاهُ",
    thirdcell:'ٱسۡتَغۡنَىٰٓ' ,
    fourthcell:  ' ',
    ),
  
    RowCellsModel
    (
    firstcell: 'إِنَّ',
    secondcell:  "إِلَىٰ",
    thirdcell: 'رَبِّكَ' ,
    fourthcell:  'ٱلرُّجۡعَىٰٓ',

    ),
   
    RowCellsModel
    (
    firstcell: 'أَرَءَيۡتَ',
    secondcell:  "ٱلَّذِي",
    thirdcell: 'يَنۡهَىٰ' ,
    fourthcell:  ' ',
    ),
   
    RowCellsModel
    (
    firstcell: 'عَبۡدًا',
    secondcell:  "إِذَا",
    thirdcell: 'صَلَّىٰٓ' ,
    fourthcell:  ' ',
    ),
      
    RowCellsModel
    (
    firstcell: 'أَرَءَيۡتَ',
    secondcell:  "إِن كَانَ",
    thirdcell:'عَلَى' ,
    fourthcell:  'ٱلۡهُدَىٰٓ',

    ),
          
    RowCellsModel
    (
    firstcell: 'أَوۡ',
    secondcell:  "أَمَرَ",
    thirdcell: 'بِٱلتَّقۡوَىٰٓ' ,
    fourthcell:  ' ',
    ),
             
    RowCellsModel
    (
    firstcell: 'أَرَءَيۡتَ',
    secondcell:  "إِن",
    thirdcell: 'كَذَّبَ' ,
    fourthcell:  'وَتَوَلَّىٰٓ',
    ),
                    
    RowCellsModel
    (
    firstcell: 'أَلَمۡ يَعۡلَم',
    secondcell:  "بِأَنَّ",
    thirdcell: 'ٱللَّهَ' ,
    fourthcell: 'يَرَىٰ',
    ),
                   
    RowCellsModel
    (
    firstcell: 'كَلَّا لَئِن',
    secondcell:  "لَّمۡ يَنتَهِ",
    thirdcell: 'لَنَسۡفَعَۢا' ,
    fourthcell:  'بِٱلنَّاصِيَةِ',
    
    ),
                      
                       
    RowCellsModel
    (
    firstcell: 'نَاصِيَةٖ',
    secondcell:  "كَٰذِبَةٍ",
    thirdcell:'خَاطِئَةٖ' ,
    fourthcell:  ' ',
    ),
   
    RowCellsModel
    (
    firstcell:'فَلۡيَدۡعُ',
    secondcell:  "نَادِيَهُۥ",
    thirdcell: ' ' ,
    fourthcell:  ' ',
    ),
    
    RowCellsModel
    (
    firstcell: 'سَنَدۡعُ',
    secondcell:  "ٱلزَّبَانِيَةَ",
    thirdcell:' ' ,
    fourthcell: ' ',

    ),
  
    RowCellsModel
    (
    firstcell: 'كَلَّا',
    secondcell:  "لَا تُطِعۡهُ",
    thirdcell: 'وَٱسۡجُدۡۤ' ,
    fourthcell: 'وَٱقۡتَرِب',

    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],






   'سُورَةُ القـَدر':[

    RowCellsModel
    (
    firstcell: 'إِنَّآ',
    secondcell: "أَنزَلۡنَٰهُ",
    thirdcell: 'فِي لَيۡلَةِ' ,
    fourthcell:  'ٱلۡقَدۡرِ',

    ),
    
    RowCellsModel
    (
    firstcell: 'وَمَآ',
    secondcell:  "أَدۡرَىٰكَ",
    thirdcell: 'مَا لَيۡلَةُ' ,
    fourthcell:  'ٱلۡقَدۡرِ',
    ),
  
    RowCellsModel
    (
    firstcell: 'لَيۡلَةُ ٱلۡقَدۡرِ',
    secondcell:  "خَيۡرٞ",
    thirdcell: 'مِّنۡ أَلۡفِ' ,
    fourthcell:  'شَهۡرٖ',

    ),

   
    RowCellsModel
    (
    firstcell: 'تَنَزَّلُ',
    secondcell:  "ٱلۡمَلَـٰٓئِكَةُ",
    thirdcell: 'وَٱلرُّوحُ' ,
    fourthcell:  'فِيهَا',
   
    ),
  
    RowCellsModel
    (
    firstcell: 'بِإِذۡنِ',
    secondcell:  "رَبِّهِم",
    thirdcell:'مِّن كُلِّ' ,
    fourthcell:  'أَمۡرٖ',
    ),
 
    RowCellsModel
    (
    firstcell: 'سَلَٰمٌ هِيَ',
    secondcell:  "حَتَّىٰ",
    thirdcell: 'مَطۡلَعِ' ,
    fourthcell: 'ٱلۡفَجۡرِ',
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
   ],

'سُورَةُ البَيِّنَة':[

    RowCellsModel
    (
    firstcell: 'لَمۡ',
    secondcell: "يَكُنِ",
    thirdcell: 'ٱلَّذِينَ' ,
    fourthcell: 'كَفَرُواْ',
  
    ),
   
    RowCellsModel
    (
    firstcell: 'مِنۡ',
    secondcell:  "أَهۡلِ",
    thirdcell: 'ٱلۡكِتَٰبِ' ,
    fourthcell:  'وَٱلۡمُشۡرِكِينَ',

    ),
   
    RowCellsModel
    (
    firstcell: 'مُنفَكِّينَ',
    secondcell:  "حَتَّىٰ",
    thirdcell:'تَأۡتِيَهُمُ' ,
    fourthcell:  'ٱلۡبَيِّنَةُ',
   
    ),

  
    RowCellsModel
    (
    firstcell: 'رَسُولٞ',
    secondcell:  "مِّنَ",
    thirdcell: 'ٱللَّهِ' ,
    fourthcell:  ' ',

    ),

   
    RowCellsModel
    (
    firstcell: 'يَتۡلُواْ',
    secondcell:  "صُحُفٗا",
    thirdcell: 'مُّطَهَّرَةٗ' ,
    fourthcell:  ' ',
    ),
   
    RowCellsModel
    (
    firstcell: 'فِيهَا',
    secondcell:  "كُتُبٞ",
    thirdcell: 'قَيِّمَةٞ' ,
    fourthcell:  ' ',
    ),
  
    RowCellsModel
    (
    firstcell: 'وَمَا تَفَرَّقَ',
    secondcell:  "ٱلَّذِينَ",
    thirdcell: 'أُوتُواْ' ,
    fourthcell:  'ٱلۡكِتَٰبَ',
   
    ),
   
    RowCellsModel
    (
    firstcell: 'إِلَّا',
    secondcell:  "مِنۢ بَعۡدِ",
    thirdcell: "مَا جَآءَتۡهُمُ" ,
    fourthcell:  'ٱلۡبَيِّنَةُ',
    ),
   
    RowCellsModel
    (
    firstcell: 'وَمَآ أُمِرُوٓاْ',
    secondcell:  "إِلَّا",
    thirdcell: 'لِيَعۡبُدُواْ' ,
    fourthcell:  'ٱللَّهَ',
 
    ),
  
    RowCellsModel
    (
    firstcell: 'مُخۡلِصِينَ',
    secondcell:  "لَهُ",
    thirdcell: 'ٱلدِّينَ' ,
    fourthcell:  'حُنَفَآءَ',
    ),
       
    RowCellsModel
    (
    firstcell: 'وَيُقِيمُواْ',
    secondcell:  "ٱلصَّلَوٰةَ",
    thirdcell: 'وَيُؤۡتُواْ' ,
    fourthcell:  'ٱلزَّكَوٰةَۚ',
   
    ),
         
    RowCellsModel
    (
    firstcell: 'وَذَٰلِكَ',
    secondcell:  "دِينُ",
    thirdcell: 'ٱلۡقَيِّمَةِ' ,
    fourthcell:  ' ',
    ),
              
    RowCellsModel
    (
    firstcell: 'إِنَّ',
    secondcell: "ٱلَّذِينَ",
    thirdcell: 'كَفَرُواْ' ,
    fourthcell:  'مِنۡ',
    ),
                   
    RowCellsModel
    (
    firstcell: 'مِن',
    secondcell: "أَهۡلِ",
    thirdcell: 'ٱلۡكِتَٰبِ' ,
    fourthcell:  'وَٱلۡمُشۡرِكِينَ',

    ),
                  
    RowCellsModel
    (
    firstcell: 'فِي نَارِ',
    secondcell:  "جَهَنَّمَ",
    thirdcell: 'خَٰلِدِينَ' ,
    fourthcell: 'فِيهَآۚ',
    ),
                
    RowCellsModel
    (
    firstcell: 'أُوْلَـٰٓئِكَ',
    secondcell:  "هُمۡ",
    thirdcell: 'شَرُّ' ,
    fourthcell:  'ٱلۡبَرِيَّةِ',

    ),
    
    RowCellsModel
    (
    firstcell: 'إِنَّ ٱلَّذِينَ',
    secondcell:  "ءَامَنُواْ",
    thirdcell: 'وَعَمِلُواْ' ,
    fourthcell:  'ٱلصَّـٰلِحَٰتِ',
   
    ),
  
    RowCellsModel
    (
    firstcell:'أُوْلَـٰٓئِكَ',
    secondcell:  "هُمۡ",
    thirdcell: 'خَيۡرُ' ,
    fourthcell:  'ٱلۡبَرِيَّةِ',
    ),
      
    RowCellsModel
    (
    firstcell: 'جَزَآؤُهُمۡ',
    secondcell:  "عِندَ رَبِّهِم",
    thirdcell:'جَنَّـٰتُ' ,
    fourthcell:  'عَدۡنٖ',

    ),
            
    RowCellsModel
    (
    firstcell: 'تَجۡرِي',
    secondcell:  "مِن",
    thirdcell: 'تَحۡتِهَا' ,
    fourthcell:  'ٱلۡأَنۡهَٰرُ',

    ),
         
    RowCellsModel
    (
    firstcell: 'خَٰلِدِينَ',
    secondcell:  "فِيهَآ",
    thirdcell: 'أَبَدٗاۖ' ,
    fourthcell:  ' ',
  
    ),
      
    RowCellsModel
    (
    firstcell: 'رَّضِيَ ٱللَّهُ',
    secondcell:  "عَنۡهُمۡ",
    thirdcell:'وَرَضُواْ' ,
    fourthcell:'عَنۡهُۚ',
    
    ),
            
    RowCellsModel
    (
    firstcell: 'ذَٰلِكَ',
    secondcell:  "لِمَنۡ",
    thirdcell: 'خَشِيَ' ,
    fourthcell:  'رَبَّهُۥ',

    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],


'سُورَةُ الزلزَلة':[
  
    RowCellsModel
    (
    firstcell: 'إِذَا',
    secondcell:  "زُلۡزِلَتِ",
    thirdcell:'ٱلۡأَرۡضُ' ,
    fourthcell:  'زِلۡزَالَهَا',
 
    ),
    
    RowCellsModel
    (
    firstcell: 'وَأَخۡرَجَتِ',
    secondcell:  "ٱلۡأَرۡضُ",
    thirdcell: 'أَثۡقَالَهَا' ,
    fourthcell: ' ',
    ),
   
    RowCellsModel
    (
    firstcell: 'وَقَالَ',
    secondcell:  "ٱلۡإِنسَٰنُ",
    thirdcell: 'مَا لَهَا' ,
    fourthcell:  ' ',
    
    ),

  
    RowCellsModel
    (
    firstcell: 'يَوۡمَئِذٖ',
    secondcell:  "تُحَدِّثُ",
    thirdcell: 'أَخۡبَارَهَا' ,
    fourthcell:  ' ',

    ),

   
    RowCellsModel
    (
    firstcell: 'بِأَنَّ',
    secondcell:  "رَبَّكَ",
    thirdcell: 'أَوۡحَىٰ' ,
    fourthcell: 'لَهَا',
 
    ),
  
    RowCellsModel
    (
    firstcell: 'يَوۡمَئِذٖ',
    secondcell:  "يَصۡدُرُ",
    thirdcell: 'ٱلنَّاسُ' ,
    fourthcell:  'أَشۡتَاتٗا',

    ),
   
    RowCellsModel
    (
    firstcell: 'لِّيُرَوۡاْ',
    secondcell:  "أَعۡمَٰلَهُمۡ",
    thirdcell: ' ' ,
    fourthcell:  ' ',
    ),
  
    RowCellsModel
    (
    firstcell:'فَمَن يَعۡمَلۡ',
    secondcell: "مِثۡقَالَ ذَرَّةٍ",
    thirdcell: 'خَيۡرٗا' ,
    fourthcell: 'يَرَهُۥ',
  
    ),

  
    RowCellsModel
    (
    firstcell: 'وَمَن يَعۡمَلۡ',
    secondcell: "مِثۡقَالَ ذَرَّةٍ",
    thirdcell: 'شَرّٗا' ,
    fourthcell: 'يَرَهُۥ',
 
    ),

            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
    
],



'سُورَةُ العَادِيات':[

    RowCellsModel
    (
    firstcell:'وَٱلۡعَٰدِيَٰتِ',
    secondcell:  "ضَبۡحٗا",
    thirdcell: ' ' ,
    fourthcell:  ' ',
    ),
   
    RowCellsModel
    (
    firstcell: 'فَٱلۡمُورِيَٰتِ',
    secondcell: "قَدۡحٗا",
    thirdcell: 'فَٱلۡمُغِيرَٰتِ' ,
    fourthcell: 'صُبۡحٗا',
  
    ),
   

  
    RowCellsModel
    (
    firstcell: 'فَأَثَرۡنَ',
    secondcell: "بِهِۦ",
    thirdcell: 'نَقۡعٗا' ,
    fourthcell: ' ',

    ),

    
    RowCellsModel
    (
    firstcell: 'فَوَسَطۡنَ',
    secondcell:  "بِهِۦ",
    thirdcell: 'جَمۡعًا' ,
    fourthcell:  ' ',

    ),
    
    RowCellsModel
    (
    firstcell: 'إِنَّ',
    secondcell:  "ٱلۡإِنسَٰنَ",
    thirdcell: 'لِرَبِّهِۦ' ,
    fourthcell:  'لَكَنُودٞ',
    ),
    
    RowCellsModel
    (
    firstcell: 'وَإِنَّهُۥ',
    secondcell: "عَلَىٰ",
    thirdcell: 'ذَٰلِكَ' ,
    fourthcell: 'لَشَهِيدٞ',
    ),
   
    RowCellsModel
    (
    firstcell:'وَإِنَّهُۥ',
    secondcell:  "لِحُبِّ",
    thirdcell: 'ٱلۡخَيۡرِ' ,
    fourthcell:  'لَشَدِيدٌ',
    
    ),
   
    RowCellsModel
    (
    firstcell: 'أَفَلَا يَعۡلَمُ',
    secondcell: "إِذَا",
    thirdcell: 'بُعۡثِرَ مَا' ,
    fourthcell:  'فِي ٱلۡقُبُورِ',
  
    ),

        
    RowCellsModel
    (
    firstcell: 'وَحُصِّلَ',
    secondcell:  "مَا",
    thirdcell: 'فِي ٱلصُّدُورِ' ,
    fourthcell:  ' ',
  
    ),
          
    RowCellsModel
    (
    firstcell: 'إِنَّ رَبَّهُم',
    secondcell:  "بِهِمۡ",
    thirdcell: 'يَوۡمَئِذٖ' ,
    fourthcell: 'لَّخَبِيرُۢ',

    ),
],



'سُورَةُ القارِعَة':[

    RowCellsModel
    (
    firstcell: 'ٱلۡقَارِعَةُ',
    secondcell:  "مَا",
    thirdcell: 'ٱلۡقَارِعَةُ' ,
    fourthcell:  ' ',

    ),
 

 
    RowCellsModel
    (
    firstcell: 'وَمَآ',
    secondcell:  "أَدۡرَىٰكَ",
    thirdcell: 'مَا' ,
    fourthcell:  'ٱلۡقَارِعَةُ',
 
    ),

  
    RowCellsModel
    (
    firstcell:'يَوۡمَ',
    secondcell:  "يَكُونُ ٱلنَّاسُ",
    thirdcell: 'كَٱلۡفَرَاشِ' ,
    fourthcell:  'ٱلۡمَبۡثُوثِ',
    ),

 
    RowCellsModel
    (
    firstcell: 'وَتَكُونُ',
    secondcell:  "ٱلۡجِبَالُ",
    thirdcell: 'كَٱلۡعِهۡنِ' ,
    fourthcell:  'ٱلۡمَنفُوشِ',
    ),
  
    RowCellsModel
    (
    firstcell: 'فَأَمَّا',
    secondcell:  "مَن",
    thirdcell: 'ثَقُلَتۡ' ,
    fourthcell: 'مَوَٰزِينُهُۥ',
    ),
 
    RowCellsModel
    (
    firstcell:'فَهُوَ',
    secondcell:  "فِي",
    thirdcell: 'عِيشَةٖ' ,
    fourthcell:  'رَّاضِيَةٖ',

    ),
  
    RowCellsModel
    (
    firstcell: 'وَأَمَّا',
    secondcell: "مَنۡ",
    thirdcell: 'خَفَّتۡ' ,
    fourthcell:  'مَوَٰزِينُهُۥ',
  
    ),
   
    RowCellsModel
    (
    firstcell: 'فَأُمُّهُۥ',
    secondcell:"هَاوِيَةٞ",
    thirdcell: ' ' ,
    fourthcell:  ' ',
    
    ),
  
    RowCellsModel
    (
    firstcell: 'وَمَآ',
    secondcell:  "أَدۡرَىٰكَ",
    thirdcell: 'مَا' ,
    fourthcell:  'هِيَهۡ',
  
    ),
       
    RowCellsModel
    (
    firstcell: 'نَارٌ',
    secondcell:  "حَامِيَةُۢ",
    thirdcell: ' ' ,
    fourthcell:  ' ',
  
    ),
],


'سُورَةُ التَكاثـُر':[
  
    RowCellsModel
    (
    firstcell: 'أَلۡهَىٰكُمُ',
    secondcell:  "ٱلتَّكَاثُرُ",
    thirdcell: ' ' ,
    fourthcell:  ' ',
 
    ),
   
    RowCellsModel
    (
    firstcell: 'حَتَّىٰ',
    secondcell:  "زُرۡتُمُ",
    thirdcell: 'ٱلۡمَقَابِرَ' ,
    fourthcell:  ' ',
    ),
    
    RowCellsModel
    (
    firstcell: 'كَلَّا',
    secondcell:  "سَوۡفَ",
    thirdcell: 'تَعۡلَمُونَ' ,
    fourthcell:  ' ',
    ),

    
    RowCellsModel
    (
    firstcell:'ثُمَّ',
    secondcell:  "كَلَّا",
    thirdcell: 'سَوۡفَ' ,
    fourthcell:  'تَعۡلَمُونَ',

    ),

  
    RowCellsModel
    (
    firstcell: 'كَلَّا',
    secondcell:  "لَوۡ تَعۡلَمُونَ",
    thirdcell: 'عِلۡمَ' ,
    fourthcell: 'ٱلۡيَقِينِ',
    ),
  
    RowCellsModel
    (
    firstcell: 'لَتَرَوُنَّ',
    secondcell:  "ٱلۡجَحِيمَ",
    thirdcell: ' ' ,
    fourthcell:  ' ',
 
    ),
  
    RowCellsModel
    (
    firstcell: 'ثُمَّ',
    secondcell:  "لَتَرَوُنَّهَا",
    thirdcell: 'عَيۡنَ' ,
    fourthcell:  'ٱلۡيَقِينِ',
 
    ),
   
    RowCellsModel
    (
    firstcell: 'ثُمَّ',
    secondcell:  "لَتُسۡـَٔلُنَّ",
    thirdcell: 'يَوۡمَئِذٍ' ,
    fourthcell:'عَنِ ٱلنَّعِيمِ',

    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],



'سُورَةُ العَصْر':[

    RowCellsModel
    (
    firstcell: 'وَٱلۡعَصۡرِ',
    secondcell:  ' ',
    thirdcell: ' ' ,
    fourthcell:  ' ',

    ),
    
    RowCellsModel
    (
    firstcell:'إِنَّ',
    secondcell:  "ٱلۡإِنسَٰنَ",
    thirdcell: 'لَفِي' ,
    fourthcell:'خُسۡرٍ',
  
    ),
    
    RowCellsModel
    (
    firstcell:'إِلَّا',
    secondcell:  "ٱلَّذِينَ",
    thirdcell: 'ءَامَنُواْ' ,
    fourthcell:  ' ',

    ),


    RowCellsModel
    (
    firstcell:'وَعَمِلُواْ',
    secondcell:  "ٱلصَّـٰلِحَٰتِ",
    thirdcell: ' ' ,
    fourthcell:  ' ',

    ),

  
    RowCellsModel
    (
    firstcell: 'وَتَوَاصَوۡاْ',
    secondcell: "بِٱلۡحَقِّ",
    thirdcell: 'وَتَوَاصَوۡاْ' ,
    fourthcell:  'بِٱلصَّبۡرِ',
    ),
],


'سُورَةُ الهُمَزَة':[
  
    RowCellsModel
    (
    firstcell: 'وَيۡلٞ',
    secondcell:  "لِّكُلِّ",
    thirdcell: 'هُمَزَةٖ' ,
    fourthcell:  'لُّمَزَةٍ',
    ),
   
    RowCellsModel
    (
    firstcell:'ٱلَّذِي',
    secondcell:  "جَمَعَ",
    thirdcell:'مَالٗا' ,
    fourthcell: 'وَعَدَّدَهُۥ',
    ),
  
    RowCellsModel
    (
    firstcell: 'يَحۡسَبُ',
    secondcell: "أَنَّ",
    thirdcell: 'مَالَهُۥٓ' ,
    fourthcell:  'أَخۡلَدَهُۥ',

    ),

  
    RowCellsModel
    (
    firstcell: 'كَلَّاۖ',
    secondcell:  "لَيُنۢبَذَنَّ",
    thirdcell: 'فِي' ,
    fourthcell:  'ٱلۡحُطَمَةِ',
    ),

 
    RowCellsModel
    (
    firstcell: 'وَمَآ',
    secondcell:  "أَدۡرَىٰكَ",
    thirdcell: 'مَا' ,
    fourthcell:  'ٱلۡحُطَمَةُ',
    ),
    
    RowCellsModel
    (
    firstcell: 'نَارُ',
    secondcell:  "ٱللَّهِ",
    thirdcell: 'ٱلۡمُوقَدَةُ' ,
    fourthcell:  ' ',

    ),
   
    RowCellsModel
    (
    firstcell: 'ٱلَّتِي',
    secondcell:  "تَطَّلِعُ",
    thirdcell: 'عَلَى' ,
    fourthcell:  'ٱلۡأَفۡـِٔدَةِ',

    ),
 
    RowCellsModel
    (
    firstcell:'إِنَّهَا',
    secondcell:  "عَلَيۡهِم",
    thirdcell: 'مُّؤۡصَدَةٞ' ,
    fourthcell:  ' ',

    ),
  
    RowCellsModel
    (
    firstcell: 'فِي',
    secondcell:  "عَمَدٖ",
    thirdcell: 'مُّمَدَّدَةِۭ' ,
    fourthcell:  ' ',
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],


'سُورَةُ الفِيل':[
  
    RowCellsModel
    (
    firstcell: 'أَلَمۡ تَرَ',
    secondcell:  "كَيۡفَ",
    thirdcell: 'فَعَلَ رَبُّكَ' ,
    fourthcell:  'بِأَصۡحَٰبِ ٱلۡفِيلِ',
    ),
 
    RowCellsModel
    (
    firstcell: 'أَلَمۡ',
    secondcell:  "يَجۡعَلۡ",
    thirdcell: 'كَيۡدَهُمۡ' ,
    fourthcell:  'فِي تَضۡلِيلٖ',
    ),

   
    RowCellsModel
    (
    firstcell: 'وَأَرۡسَلَ',
    secondcell: "عَلَيۡهِمۡ",
    thirdcell: 'طَيۡرًا' ,
    fourthcell:'أَبَابِيلَ',
    ),

   
    RowCellsModel
    (
    firstcell:'تَرۡمِيهِم',
    secondcell: "بِحِجَارَةٖ",
    thirdcell: 'مِّن' ,
    fourthcell:  'سِجِّيلٖ',
    ),
    
    RowCellsModel
    (
    firstcell: 'فَجَعَلَهُمۡ',
    secondcell:  "كَعَصۡفٖ",
    thirdcell: 'مَّأۡكُولِۭ' ,
    fourthcell:  ' ',

    ),
],



'سُورَةُ قـُرَيْش':[

    RowCellsModel
    (
    firstcell: 'لِإِيلَٰفِ',
    secondcell:  "قُرَيۡشٍ",
    thirdcell: ' ',
    fourthcell:  ' ',
    ),
   
    RowCellsModel
    (
    firstcell: 'إِۦلَٰفِهِمۡ',
    secondcell:  "رِحۡلَةَ",
    thirdcell: 'ٱلشِّتَآءِ' ,
    fourthcell:  'وَٱلصَّيۡفِ',
    ),
    
    RowCellsModel
    (
    firstcell: 'فَلۡيَعۡبُدُواْ',
    secondcell: "رَبَّ",
    thirdcell: 'هَٰذَا' ,
    fourthcell:  'ٱلۡبَيۡتِ',
  
    ),

 
    RowCellsModel
    (
    firstcell: 'ٱلَّذِيٓ',
    secondcell:  "أَطۡعَمَهُم",
    thirdcell:'مِّن' ,
    fourthcell:  'جُوعٖ',
 
    ),

  
    RowCellsModel
    (
    firstcell: 'وَءَامَنَهُم',
    secondcell:  "مِّنۡ",
    thirdcell: 'خَوۡفِۭ' ,
    fourthcell:  ' ',
    ),
],



'سُورَةُ المَاعُون':[
 
    RowCellsModel
    (
    firstcell: 'أَرَءَيۡتَ',
    secondcell:  "ٱلَّذِي",
    thirdcell: 'يُكَذِّبُ' ,
    fourthcell:  'بِٱلدِّينِ',

    ),
   
    RowCellsModel
    (
    firstcell:'فَذَٰلِكَ',
    secondcell: "ٱلَّذِي",
    thirdcell: 'يَدُعُّ' ,
    fourthcell:  'ٱلۡيَتِيمَ',

    ),
   
    RowCellsModel
    (
    firstcell: 'وَلَا يَحُضُّ عَلَىٰ',
    secondcell:  "طَعَامِ ٱلۡمِسۡكِينِ",
    thirdcell: 'فَوَيۡلٞ' ,
    fourthcell:  'لِّلۡمُصَلِّينَ',
    ),

   
    RowCellsModel
    (
    firstcell: 'ٱلَّذِينَ',
    secondcell:  "هُمۡ عَن",
    thirdcell: 'صَلَاتِهِمۡ' ,
    fourthcell:  'سَاهُونَ',
    ),
  
    RowCellsModel
    (
    firstcell: "ٱلَّذِينَ هُمۡ",
    secondcell:  "يُرَآءُونَ",
    thirdcell: 'وَيَمۡنَعُونَ' ,
    fourthcell:  'ٱلۡمَاعُونَ',
    ),
],


'سُورَةُ الكَوْثَر':[
  
    RowCellsModel
    (
    firstcell: 'إِنَّآ',
    secondcell: "أَعۡطَيۡنَٰكَ",
    thirdcell: 'ٱلۡكَوۡثَرَ' ,
    fourthcell:  ' ',
    ),
   
    RowCellsModel
    (
    firstcell: 'فَصَلِّ',
    secondcell:  "لِرَبِّكَ",
    thirdcell: 'وَٱنۡحَرۡ' ,
    fourthcell:  ' ',
    ),
   
    RowCellsModel
    (
    firstcell: 'إِنَّ',
    secondcell: "شَانِئَكَ",
    thirdcell: 'هُوَ' ,
    fourthcell:  'ٱلۡأَبۡتَرُ',
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],



'سُورَةُ الكَافِرُون':[
 
    RowCellsModel
    (
    firstcell: 'قُلۡ يَا',
    secondcell: "أَيُّهَا ٱلۡكَٰفِرُونَ",
    thirdcell: 'لَآ أَعۡبُدُ' ,
    fourthcell:  'مَا تَعۡبُدُونَ',
    ),
   
    RowCellsModel
    (
    firstcell: 'وَلَآ',
    secondcell: "أَنتُمۡ",
    thirdcell: 'عَٰبِدُونَ' ,
    fourthcell: 'مَآ أَعۡبُدُ',
    ),

    RowCellsModel
    (
    firstcell: 'وَلَآ',
    secondcell:  "أَنَا۠",
    thirdcell:'عَابِدٞ' ,
    fourthcell: 'مَّا عَبَدتُّمۡ',
    ),

   
    RowCellsModel
    (
    firstcell: 'وَلَآ',
    secondcell:  "أَنتُمۡ",
    thirdcell: 'عَٰبِدُونَ' ,
    fourthcell: 'مَآ أَعۡبُدُ',
    ),
    
    RowCellsModel
    (
    firstcell: 'لَكُمۡ',
    secondcell:  "دِينُكُمۡ",
    thirdcell: 'وَلِيَ' ,
    fourthcell:  'دِينِ',
    ),
],




'سُورَةُ النـَّصر':[
  
    RowCellsModel
    (
    firstcell: 'إِذَا',
    secondcell:  "جَآءَ",
    thirdcell: 'نَصۡرُ ٱللَّهِ' ,
    fourthcell:  'وَٱلۡفَتۡحُ',

    ),
   
    RowCellsModel
    (
    firstcell: 'وَرَأَيۡتَ',
    secondcell: "ٱلنَّاسَ",
    thirdcell: ' ' ,
    fourthcell:  ' ',
    ),
    
    RowCellsModel
    (
    firstcell: 'يَدۡخُلُونَ',
    secondcell:  "فِي دِينِ",
    thirdcell: 'ٱللَّهِ' ,
    fourthcell: 'أَفۡوَاجٗا',
    ),

    
    RowCellsModel
    (
    firstcell: 'فَسَبِّحۡ',
    secondcell:  "بِحَمۡدِ",
    thirdcell: 'رَبِّكَ' ,
    fourthcell: 'وَٱسۡتَغۡفِرۡهُۚ',

    ),

   
    RowCellsModel
    (
    firstcell: 'إِنَّهُۥ',
    secondcell: "كَانَ",
    thirdcell: 'تَوَّابَۢا' ,
    fourthcell:  ' ',
    ),
],



'سُورَةُ المَسَد':[
  
    RowCellsModel
    (
    firstcell: 'تَبَّتۡ',
    secondcell: "يَدَآ",
    thirdcell: 'أَبِي لَهَبٖ' ,
    fourthcell:  'وَتَبَّ',
    ),
  
    RowCellsModel
    (
    firstcell: 'مَآأَغۡنَى',
    secondcell:  "عَنۡهُ",
    thirdcell: 'مَالُهُۥ' ,
    fourthcell:  'وَمَا كَسَبَ',
    ),

  
    RowCellsModel
    (
    firstcell: 'سَيَصۡلَىٰ',
    secondcell: "نَارٗا",
    thirdcell: 'ذَاتَ' ,
    fourthcell:  'لَهَبٖ',
    ),

  
    RowCellsModel
    (
    firstcell:'وَٱمۡرَأَتُهُۥ',
    secondcell: "حَمَّالَةَ",
    thirdcell: 'ٱلۡحَطَبِ' ,
    fourthcell:  ' ',
    ),

   
    RowCellsModel
    (
    firstcell: 'فِي',
    secondcell:  "جِيدِهَا",
    thirdcell: 'حَبۡلٞ' ,
    fourthcell:  'مِّن مَّسَدِۭ',
    ),
],






'سُورَةُ الإخْلَاص':[
  
    RowCellsModel
    (
    firstcell: 'قُلۡ',
    secondcell: "هُوَ",
    thirdcell: 'ٱللَّهُ' ,
    fourthcell:  'أَحَدٌ',
    ),
    
    RowCellsModel
    (
    firstcell: 'ٱللَّهُ',
    secondcell:  "ٱلصَّمَدُ",
    thirdcell: ' ' ,
    fourthcell:  ' ',
    ),
   
    RowCellsModel
    (
    firstcell: 'لَمۡ',
    secondcell: "يَلِدۡ",
    thirdcell: 'وَلَمۡ' ,
    fourthcell: 'يُولَدۡ',
    ),

    
    RowCellsModel
    (
    firstcell: 'وَلَمۡ',
    secondcell:  "يَكُن لَّهُۥ",
    thirdcell: 'كُفُوًا' ,
    fourthcell:  'أَحَدُۢ',

    ),

    RowCellsModel
    (
    firstcell: ' ',
    secondcell:  ' ',
    thirdcell:' ' ,
    fourthcell:  ' '
    ),
],






'سُورَةُ الفَلَق':[
  
    RowCellsModel
    (
    firstcell: 'قُلۡ',
    secondcell:  "أَعُوذُ",
    thirdcell: 'بِرَبِّ' ,
    fourthcell:  'ٱلۡفَلَقِ',
    ),
   
    RowCellsModel
    (
    firstcell: 'مِن',
    secondcell:"شَرِّ",
    thirdcell: 'مَا' ,
    fourthcell:  'خَلَقَ',
    ),
   
    RowCellsModel
    (
    firstcell: 'وَمِن',
    secondcell:"شَرِّ",
    thirdcell:'غَاسِقٍ' ,
    fourthcell:  'إِذَا وَقَبَ',
    ),

  
    RowCellsModel
    (
    firstcell: 'وَمِن',
    secondcell: "شَرِّ",
    thirdcell: 'ٱلنَّفَّـٰثَٰتِ' ,
    fourthcell:  'فِي ٱلۡعُقَدِ',
    ),

   
    RowCellsModel
    (
    firstcell: 'وَمِن',
    secondcell:  "شَرِّ",
    thirdcell:'حَاسِدٍ' ,
    fourthcell: 'إِذَا حَسَدَ',
    ),
],



'سُورَةُ النَّاس':[
 
    RowCellsModel
    (
    firstcell: 'قُلۡ',
    secondcell: "أَعُوذُ",
    thirdcell: 'بِرَبِّ' ,
    fourthcell:  'ٱلنَّاسِ',
    ),
    RowCellsModel
    (
    firstcell: 'مَلِكِ',
    secondcell:  "ٱلنَّاسِ",
    thirdcell: 'إِلَٰهِ' ,
    fourthcell:  'ٱلنَّاسِ',
    ),


   
    RowCellsModel
    (
    firstcell: 'مِن',
    secondcell: "شَرِّ",
    thirdcell: 'ٱلۡوَسۡوَاسِ' ,
    fourthcell:  'ٱلۡخَنَّاسِ',
    ),

   
    RowCellsModel
    (
    firstcell: 'ٱلَّذِي',
    secondcell:  "يُوَسۡوِسُ",
    thirdcell: 'فِي صُدُورِ' ,
    fourthcell: 'ٱلنَّاسِ',
    ),

   
    RowCellsModel
    (
    firstcell: 'مِنَ',
    secondcell: "ٱلۡجِنَّةِ",
    thirdcell: 'وَٱلنَّاسِ' ,
    fourthcell: ' ',
    ),
],


'سُورَةُ الْفَاتِحَة':[

        RowCellsModel
    (
    firstcell: 'بِسْمِ',
    secondcell:  "ٱللَّهِ",
    thirdcell: 'ٱلرَّحْمَٰنِ' ,
    fourthcell:  'ٱلرَّحِيمِ',

    ),

    RowCellsModel
    (
    firstcell: 'الْحَمْدُ',
    secondcell:  "لِلَّهِ",
    thirdcell: 'رَبِّ' ,
    fourthcell:  'الْعَالَمِينَ',

    ),
  
    RowCellsModel
    (
    firstcell: 'الرَّحْمَنِ',
    secondcell: "الرَّحِيمِ",
    thirdcell: ' ' ,
    fourthcell:  ' ',

    ),

  
    RowCellsModel
    (
    firstcell: 'مَالِكِ',
    secondcell: "يَوْمِ",
    thirdcell: 'الدِّينِ' ,
    fourthcell:  ' ',
    ),

  
    RowCellsModel
    (
    firstcell: 'إِيَّاكَ',
    secondcell:"نَعْبُدُ",
    thirdcell: 'وَإِيَّاكَ' ,
    fourthcell:  'نَسْتَعِينُ',
    ),

   
    RowCellsModel
    (
    firstcell: 'اهْدِنَا',
    secondcell: "الصِّرَاطَ",
    thirdcell: 'الْمُسْتَقِيمَ',
    fourthcell:  ' ',
    ),

        RowCellsModel
    (
    firstcell: 'صِرَاطَ',
    secondcell: "الَّذِينَ",
    thirdcell: 'أَنْعَمْتَ' ,
    fourthcell:  'عَلَيْهِمْ',
    ),

    RowCellsModel
    (
    firstcell: 'غَيْرِ',
    secondcell: "الْمَغْضُوبِ",
    thirdcell: 'عَلَيْهِمْ',
    fourthcell:  ' ',

    ),

        RowCellsModel
    (
    firstcell: 'وَلَا',
    secondcell: "الضَّالِّينَ",
    thirdcell: ' ' ,
    fourthcell: ' ',

    ),
            RowCellsModel
    (
    firstcell:  ' ',
    secondcell:   ' ',
    thirdcell:  ' ',
    fourthcell:   ' ',
       
    ),
],

'آيَةَ الْكُرْسِيِّ':[
  
    RowCellsModel
    (
    firstcell: 'اللَّهُ' ,
    secondcell: "لا",
    thirdcell:'إِلَهَ',
    fourthcell: 'إِلَّا هُوَ',
    ),
  
    RowCellsModel
    (
    firstcell: 'الْحَيُّ' ,
    secondcell: "الْقَيُّومُ" ,
    thirdcell: ' ',
    fourthcell: ' ' ,
    ),
  
    RowCellsModel
    (
    firstcell: 'لا',
    secondcell:"تَأْخُذُهُ",
    thirdcell: 'سِنَةٌ',
    fourthcell: 'وَلا نَوْمٌ',

    ),

    RowCellsModel
    (
    firstcell: 'لَهُ',
    secondcell: "مَا",
    thirdcell: 'فِي' ,
    fourthcell: 'السَّمَوَات',
  
    ),

    RowCellsModel
    (
    firstcell: 'وَمَا',
    secondcell:  "فِي",
    thirdcell: 'الأَرْضِ',
    fourthcell:  ' ',
    ),


    RowCellsModel
    (
    firstcell:'مَنْ ذَا' ,
    secondcell: "الَّذِي يَشْفَعُ",
    thirdcell: 'عِنْدَه' ,
    fourthcell: 'إِلَّا بِإِذْنِهِ' ,
    ),

    RowCellsModel
    (
    firstcell: 'يَعْلَمُ',
    secondcell: "مَا بَيْنَ",
    thirdcell: 'أَيْدِيهِمْ',
    fourthcell:  'وَمَا خَلْفَهُمْ',
    ),

    RowCellsModel
    (
    firstcell: 'وَلا يُحِيطُونَ',
    secondcell: "بِشَيْءٍ",
    thirdcell: 'مِنْ عِلْمِهِ', 
    fourthcell:  'إِلَّا بِمَا شَاءَ',
    ), 
    
    RowCellsModel
    (
    firstcell: 'وَسِعَ',
    secondcell: "كُرْسِيُّهُ",
    thirdcell: 'السَّمَوَاتِ' ,
    fourthcell:  'وَالأَرْضَ',
    ), 

    RowCellsModel
    (
    firstcell: 'وَلا يَئُودُهُ',
    secondcell:  "حِفْظُهُمَا",
    thirdcell: 'وَهُوَ الْعَلِيُّ',
    fourthcell:  'الْعَظِيمُ',
    ), 
],
 };
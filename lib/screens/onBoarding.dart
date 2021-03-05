// dependencies
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
// local
import '../widget/pageRouteAnimation.dart';
import '../const.dart';
import 'homePage.dart';
import '../models.dart';
class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Image.asset('assets/images/logo.png'),
              height: _size.height * 0.15,
              width: _size.height * 0.3,
            ),
            Container(
              height: _size.height * 0.7,
              child: PageIndicatorContainer(
                indicatorSelectorColor: kPrimaryColor,
                indicatorColor: kGreyColor.withOpacity(0.05),
                padding: EdgeInsets.zero,
                shape: IndicatorShape.roundRectangleShape(
                    size: Size(25, 10), cornerSize: Size.square(5)),
                length: 3,
                child: PageView(
                  children: onBoardingModel
                      .map((e) => BodyOnBoarding(
                            imageAssets: e.imageAsset,
                            mainTitle: e.mainTitle,
                            subTitle: e.subTitle,
                            size: _size,
                          ))
                      .toList(),
                  controller: _pageController,
                ),
              ),
            ),
            Container(
              height: _size.height * 0.06,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                color: kBorderColor,// set border color
                width: 1.0),   // set border width
        borderRadius: BorderRadius.all(
            Radius.circular(10.0)), 
              ),
              margin: EdgeInsets.all(12),
              // padding: EdgeInsets.all(10),
              child:  InkWell(
                  onTap: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    setState(() {
                    firstRun=false;
                    prefs.setBool("firstRun",firstRun);
                    });
                    Navigator.pushAndRemoveUntil(
                        context,
                        OnBoardingPageRoute(
                          duration: 1000,
                            widget: HomePage(),
                            myAnimation: Curves.elasticInOut),
                        (route) => false);
                  },
                  child: Center(
                    child: Text("إبدأ",style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 22, color:kPrimaryColor )),
                  ),
                ),
                
                
              ),
            
          ],
        ),
      ),
    );
  }
}

class BodyOnBoarding extends StatelessWidget {
  final String imageAssets;
  final String mainTitle;
  final String subTitle;
  final Size size;
  const BodyOnBoarding(
      {Key key, this.imageAssets, this.mainTitle, this.subTitle, this.size})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(imageAssets, height: size.height * 0.4),
        Column(
          children: [
            Text(
              mainTitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              subTitle,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
            ),
          ],
        ),
        SizedBox()
      ],
    );
  }
}

List<OnBoardingModel> onBoardingModel = [
  OnBoardingModel(
      mainTitle: "تعلم بالاسلوب الذي ينسابك",
      subTitle: "مصادر تعلم متنوعة",
      imageAsset: 'assets/images/product.png'),
  OnBoardingModel(
      mainTitle: "مقاطع الفيديو والمقالات والألعاب",
      subTitle: "وصول مجاني في أي وقت وفي أي مكان",
      imageAsset: 'assets/images/product.png'),
  OnBoardingModel(
      mainTitle: "إلعب وتعلم",
      subTitle: "قم بزيادة مهاراتك في حل المشكلات",
      imageAsset: 'assets/images/product.png'),
];

class OnBoardingModel {
  final String mainTitle;
  final String subTitle;
  final String imageAsset;

  OnBoardingModel({this.mainTitle, this.subTitle, this.imageAsset});
}

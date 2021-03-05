import 'package:flutter/material.dart';
import '../models.dart';
import '../const.dart';
showAlertDialog({
  @required BuildContext context,
  @required bool newFav,
  @required int currentLoh,
  @required String playedSoraName
  }) {
  // set up the button
  Widget okButton = InkWell(
    child: Padding(
      padding: const EdgeInsets.only(left:15.0,bottom: 10),
      child: Text("حسناً",style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 16, color:kPrimaryColor )),
    ), 
    onTap: () {
      if (newFav==true)
      {
  myavouriteSora.add(playedSoraName);
  myavouriteLoh.add((currentLoh+1).toString());
  (context as Element).markNeedsBuild();
      }
      else{
        myavouriteSora.remove(playedSoraName);
        myavouriteLoh.remove((currentLoh+1).toString());
        (context as Element).markNeedsBuild();
      }
      Navigator.of(context).pop();
    },
  );
    Widget cancelButton = InkWell(
    child: Padding(
      padding: const EdgeInsets.only(left:15.0,bottom: 10),
      child: Text("إلغاء",style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 16, color:kPrimaryColor )),
    ),
    onTap: () {
      Navigator.of(context).pop();
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title:Text("الْأَلْوَاح الْمَحْفُوظَة"),
    content:newFav? Text('هل تريد إضافة هذا اللوح إلي الألواح المحفوظة'):Text('هذا اللوح محفوظ بالفعل\n هل تريد إلغاءه') ,  
    actions: [
      okButton,
      cancelButton
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

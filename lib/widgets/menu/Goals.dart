import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realeestate/constants.dart';
class  Goals extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
 crossAxisAlignment: CrossAxisAlignment.start,

      children: [
       Padding(
         padding:  EdgeInsets.symmetric(vertical: kDefaultPadding),
         child: Text(" Goals",
         style: Theme.of(context).textTheme.subtitle2,
         ),
       ),

        buildGoals('Planning Stage'),
        buildGoals('Development Stage'),
        buildGoals('Excution Phase'),
        buildGoals('New way to living'),


      ],



    );
  }
  Padding buildGoals(String text){
return Padding(
  padding:  EdgeInsets.only(bottom: kDefaultPadding/2),
  child: Row(
    children: [
      SvgPicture.asset("assets/icons/check.svg"),
      SizedBox(width: kDefaultPadding/2,),
      Text("$text"),



    ],
  ),
);



  }



}

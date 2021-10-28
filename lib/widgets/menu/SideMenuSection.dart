import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realeestate/constants.dart';

import 'ContactInfo.dart';
import 'Goals.dart';
import 'Logo.dart';

class SideMenuSection extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,

                child: Padding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      ContactInfo(),
                      Divider(),
                      Goals(),
                      Divider(),
                      SizedBox(height: kDefaultPadding,),
                      TextButton(onPressed: (){

                      }

                      , child:FittedBox(
                        child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/download.svg"),
                              SizedBox(width: kDefaultPadding/2,),
                              Text("Dowenlod Brochure",
                              style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText1!.color
                              ),

                              ),


                            ],


                          ),
                      ), ),
                      Container(
                        margin: EdgeInsets.only(top: kDefaultPadding*2),
                        color: kSecondaryColor,
                        child: Row(
                          children: [
                            IconButton(onPressed: (){},

                                icon: SvgPicture.asset("assets/icons/linkedin.svg")),
                            IconButton(onPressed: (){},

                                icon: SvgPicture.asset("assets/icons/dribble.svg")),
                            IconButton(onPressed: (){},

                                icon: SvgPicture.asset("assets/icons/twitter.svg")),
                            IconButton(onPressed: (){},

                                icon: SvgPicture.asset("assets/icons/github.svg")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

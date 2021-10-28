import 'package:flutter/material.dart';
import 'package:realeestate/models/recommendation.dart';
import 'package:realeestate/widgets/main/HomeBanner.dart';
import 'package:realeestate/widgets/main/IconInfo.dart';
import 'package:realeestate/widgets/main/Projects.dart';
import 'package:realeestate/widgets/main/Recommendations.dart';


class  mainSection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HomeBanner(),
          IconInfo(),
          Projects(),
          Recommendations(),


        ],
      ),
    );
  }
}

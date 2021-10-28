import 'package:flutter/material.dart';
import 'package:realeestate/constants.dart';
import 'package:realeestate/models/recommendation.dart';
class  Recommendations extends StatelessWidget {
  const  Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(

        children: [
          Text("Client Recommendation",
          style: Theme
          .of(context)
          .textTheme
          .headline5,
    ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,

            child: Row(
              children: List.generate(demoRecommendation.length, (index) => Padding(
                  padding: EdgeInsets.only(right: kDefaultPadding,),

              child: RecommendationsCard(
                recommendation: demoRecommendation[index],
              ),
              ),
              ),
            ),),


        ],
      ),
    );
  }
}
class  RecommendationsCard extends StatelessWidget {
 final Recommendation recommendation;

  const RecommendationsCard({Key? key, required this.recommendation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(recommendation.name!,
            style: Theme.of(context).textTheme.headline2,
            ),
            subtitle: Text(recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: kDefaultPadding /2,),
          Text(recommendation.text!,
          style: TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:realeestate/constants.dart';
class  ContactInfo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: "Address", text: "Matay-minia"),

        buildContactInfo(title: "Country", text: "Egypt"),
        buildContactInfo(title: "Email", text: "Ehab@gmail.com"),
        buildContactInfo(title: "Mobile", text: "01555802383"),
        buildContactInfo(title: "Whatsapp", text: "01157743369"),

      ],
    );
  }
  Padding buildContactInfo({required String title,required String text}){


    return  Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          Text("$title",
            style: TextStyle(
              color: Colors.white,

            ),
          ),
          Text("$text",
            style: TextStyle(
              color: Colors.white,
            ),),
        ],
      ),
    );

  }





}

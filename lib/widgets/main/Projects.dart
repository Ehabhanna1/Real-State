import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realeestate/constants.dart';
import 'package:realeestate/models/projects.dart';
import 'package:realeestate/widgets/responsive.dart';

class Projects extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Our Projects",
            style: Theme
                .of(context)
                .textTheme
                .headline5,
          ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: demoProjects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isDesktop(context)? 3:2,
                childAspectRatio: 0.75,
                crossAxisSpacing: Responsive.isDesktop(context)? kDefaultPadding:5,
                mainAxisSpacing:  Responsive.isDesktop(context)? kDefaultPadding:5,

              ),
              itemBuilder: (context, index) =>ProjectCard(
                project: demoProjects[index],
              )

          ),
        ],


      ),
    );
  }
}
class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset( project.image!, fit: BoxFit.cover,),
          SizedBox(height: kDefaultPadding,),
          Text( project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme
                .of(context)
                .textTheme
                .subtitle2,
          ),
          SizedBox(height: kDefaultPadding,),
          Expanded(
            child: Text(project.description!,

              style: TextStyle(height: 1.7),

            ),
          ),
          SizedBox(height: kDefaultPadding / 4,),
          TextButton(onPressed: ()
          {},
            child:Text("More Info >",
              style: TextStyle
                (
                  color
                      :
                  kPrimaryColor
              ),
            ),
          ),
        ],
      ),
    );
  }
}

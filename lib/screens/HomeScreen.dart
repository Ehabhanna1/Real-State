import 'package:flutter/material.dart';
import 'package:realeestate/constants.dart';
import 'package:realeestate/widgets/main/mainSection.dart';
import 'package:realeestate/widgets/menu/SideMenuSection.dart';
import 'package:realeestate/widgets/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)?null:AppBar(
        backgroundColor: kBgColor,
        leading: Builder(
            builder: (context)=>IconButton(
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu)),
        ),
      ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(
              children: [
                if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: Container(
                    child: SideMenuSection(),
                    color: Colors.white,
                  ),
                ),
                Expanded(flex: 7, child: mainSection()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

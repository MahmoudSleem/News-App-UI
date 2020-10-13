import 'package:flutter/material.dart';
import 'package:news_app_applecation/models/nav_menu.dart';
import 'package:news_app_applecation/screens/headline_news.dart';
import 'package:news_app_applecation/screens/onboarding.dart';
import 'package:news_app_applecation/screens/home_screen.dart';
class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}
class _NavigationDrawerState extends State<NavigationDrawer> {
  List <NavMenuItem> navigationMenu = [
    NavMenuItem("Explore" ,() => HomeScreen() ),
    NavMenuItem("Headline News" ,() => HeadLineNews() ),
    NavMenuItem("Read Later" ,() => HeadLineNews() ),
    NavMenuItem("Videos" ,() => HeadLineNews() ),
    NavMenuItem("Photos" ,() => HeadLineNews() ),
    NavMenuItem("Setting" ,() => HeadLineNews() ),
    NavMenuItem("Logout" ,() => HeadLineNews() ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 75),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: ListTile(
                title: Text(
                  navigationMenu[position].title,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 22,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade500,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return navigationMenu[position].destination();
                  }));
                },
              ),
            );
          },
          itemCount: navigationMenu.length,
        ),
      ),
    );
  }
}

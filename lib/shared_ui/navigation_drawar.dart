import 'package:flutter/material.dart';
class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}
class _NavigationDrawerState extends State<NavigationDrawer> {
  List<String> title = [
    'Explore',
    'Headline News',
    'Read Later',
    'Videos',
    'Photos',
    'Setting',
    'Logout'
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
                  title[position],
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 22,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
            );
          },
          itemCount: title.length,
        ),
      ),
    );
  }
}

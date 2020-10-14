import 'package:flutter/material.dart';
import 'package:news_app_applecation/shared_ui/navigation_drawar.dart';
import 'home_tabs/favorites.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/what`s_new.dart ';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum PopOutMenu { HELP, ABOUT, CONTACT, SETTING }

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Explore'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          _PopOutMenu(context),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: ('WHAT`S NEW'),
            ),
            Tab(
              text: ('POPULAR'),
            ),
            Tab(
              text: ('FAVOURITES'),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: Center(
          child: TabBarView(
        children: [WhatsNew(), Popular(), Favorites()],
        controller: _tabController,
      )),
    );
  }

  Widget _PopOutMenu(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.ABOUT,
            child: Text('ABOUT'),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.CONTACT,
            child: Text('CONTACT'),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.SETTING,
            child: Text('SETTING'),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.HELP,
            child: Text('HELP'),
          ),
        ];
      },
      onSelected: (PopOutMenu menu) {
        // TODO :
      },
      icon: Icon(Icons.more_vert),
    );
  }
}

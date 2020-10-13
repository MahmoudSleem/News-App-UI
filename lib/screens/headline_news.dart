import 'package:flutter/material.dart';
import 'package:news_app_applecation/shared_ui/navigation_drawar.dart';

import 'home_tabs/favorites.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/what`s_new.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}
TabController _tabController;

class _HeadLineNewsState extends State<HeadLineNews> with  TickerProviderStateMixin{
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0,length: 3, vsync: this);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavigationDrawer() ,
      appBar: AppBar(
        title: Text('Headline News'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: ('WHAT`S NEW'),),
            Tab(text: ('POPULAR'),),
            Tab(text: ('FAVOURITES'),),

          ] , controller: _tabController,
        ),
      ),

      body: Center(
          child: TabBarView(children: [
            Favorites(),
            Popular(),
            Favorites()

          ] , controller: _tabController,)
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_app_applecation/shared_ui/navigation_drawar.dart';
import 'home_tabs/favorites.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/what`s_new.dart ';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0,length: 3, vsync: this);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavigationDrawer() ,
      appBar: AppBar(
        title: Text('Explore'),
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
          WhatsNew(),
          Popular(),
          Favorites()

        ] , controller: _tabController,)
      ),
    );
  }
}

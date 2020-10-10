
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';
class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pages;
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  void _page() {
    pages = List<PageModel>();
    pages.add(PageModel(
        'child',
        '1- MAking easy as waving your hand back and forth in easy step',
        Icons.child_friendly,
        'assets/images/pg2.jpg'));
    pages.add(PageModel(
        'directions_run',
        '2- MAking easy as waving your hand back and forth in easy step',
        Icons.directions_run,
        'assets/images/pg1.jpg'));
    pages.add(PageModel(
        'all_inclusive',
        '3- MAking easy as waving your hand back and forth in easy step',
        Icons.all_inclusive,
        'assets/images/pg2.jpg'));
    pages.add(PageModel(
        'ac_unit',
        '4- MAking easy as waving your hand back and forth in easy step',
        Icons.ac_unit,
        'assets/images/pg1.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    _page(); //// في حال لم تتم الاضافة لاتعمل الصوروالنصوص ولايقونات
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Scaffold(
              body: PageView.builder(
                itemBuilder: (context, index) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        // color: Colors.black87,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(pages[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Transform.translate(
                            child: Icon(
                              pages[index].icon,
                              size: 100,
                              color: Colors.white,
                            ),
                            offset: Offset(0, -60),
                          ),
                          Text(
                            pages[index].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.1),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 48, right: 48, top: 20),
                            child: Text(
                              pages[index].description,
                              style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                  letterSpacing: 0.8,
                                  textBaseline: TextBaseline.alphabetic),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
                itemCount: pages.length,
                onPageChanged: (index) {
                  _pageViewNotifier.value = index;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 260, left: 20),
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: _displayPageIndicator(pages.length),
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 350,
                height: 55,
                padding: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: RaisedButton(
                    color: Colors.red.shade800,
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 1.1, fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            _updateSeen();
                            return HomeScreen();
                          },
                        ),
                      );
                    },

                    // _displayPageIndicator()
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _displayPageIndicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }

  void _updateSeen() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }
}

class PageModel {
  String _title;
  String _description;

  IconData _icon;
  String _image;

  PageModel(this._title, this._description, this._icon, this._image);

  String get image => _image;

  IconData get icon => _icon;

  String get description => _description;

  String get title => _title;
}

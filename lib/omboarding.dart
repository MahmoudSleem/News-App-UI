import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pages;

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
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 260 ,left: 20),
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _drowPaageIndicator()
            )
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 380,
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
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    ));
  }

  List<Widget> _drowPaageIndicator()// for draw all circles in indicators
  {
    List<Widget> _widget = List<Widget>();
    for (var i in pages){
      _widget.add(_drowCircle(Colors.red));
    }
    return _widget;
  }

  Widget _drowCircle(color)// for draw circle
  {
    return  Transform.translate(
      offset: Offset(0, 0),
      child: Container(
        margin: EdgeInsets.only(right: 8),
        width: 15,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color
        ),
      ),
    );
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

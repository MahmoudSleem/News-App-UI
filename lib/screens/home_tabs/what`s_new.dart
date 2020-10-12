import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHeader(),
          _drawTopStories(),
        ],
      ),
    );
  }

  Widget _drawHeader() {
    TextStyle _headerTitle = TextStyle(
        color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600);
    TextStyle _headerDescription = TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/pg1.jpg'),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: Text(
                'How terriers &Royals Gatecrashed Fine',
                style: _headerTitle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 34),
              child: Text(
                'How terriers &Royals Gatecrashed Fine &Royals Gatecrashed Fine',
                style: _headerDescription,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawTopStories() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: _drawSectionTitle('Top Stories'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 5),
            child: Card(
              child: Column(
                children: <Widget>[
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
                  child: _drawSectionTitle('Recent Update'),
                ),
                _drawRecentUpdateCard(Colors.deepOrange),
                _drawRecentUpdateCard(Colors.teal),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawDivider() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade100,
    );
  }

  Widget _drawSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 125,
            height: 100,
            child: Image(
              image: ExactAssetImage('assets/images/pg1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'The world Global Warning Annuall summit',
                    maxLines: 2,
                    style: (TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('micheal Adams'),
                      Row(
                        children: <Widget>[Icon(Icons.timer), Text('15 min')],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawSectionTitle(String s) {
    return Text(
      s,
      style: TextStyle(
          color: Colors.grey.shade700,
          fontWeight: FontWeight.w600,
          fontSize: 16),
    );
  }

  Widget _drawRecentUpdateCard(Color color) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/pg1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 2, bottom: 2),
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(6)),
              child: Text(
                'SPORT',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
            child: Text('Vettel is Ferrari Number One - Hamilton',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 12),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.timer,
                  color: Colors.grey,
                  size: 12,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '15 Min',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

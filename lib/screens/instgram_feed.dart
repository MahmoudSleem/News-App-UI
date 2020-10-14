import 'package:flutter/material.dart';
import 'package:news_app_applecation/shared_ui/navigation_drawar.dart';

class InstagramFeedState extends StatefulWidget {
  @override
  _InstagramFeedStateState createState() => _InstagramFeedStateState();
}

class _InstagramFeedStateState extends State<InstagramFeedState> {
  TextStyle _hashTagStyle = TextStyle(
    color: Colors.orange,
  );
  TextStyle _fotterStyle = TextStyle(
    color: Colors.orange,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram Feed"),
        centerTitle: false,
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Card(
              // child: _cardTwitter(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _drawHeader(),
                    _drawTitle(),
                    _drawHashTags(),
                    _drawBody(),
                    _drawFooter(),
                  ]),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/images/pg1.jpg'),
                radius: 24,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Mahmoud Sleem',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Fri, 12May 2018 . 14.30',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 24,
                  ),
                  color: Colors.grey.shade400,
                  onPressed: () {}),
              Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  '25',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _drawTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 8, left: 16, right: 16),
      child: Text(
        "we also talk about the future of work as the robot   ",
        style: TextStyle(color: Colors.grey.shade900),
      ),
    );
  }

  Widget _drawHashTags() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(
              onPressed: () {},
              child: Text(
                '#advance',
                style: _hashTagStyle,
              )),
          FlatButton(
              onPressed: () {},
              child: Text(
                '#advance',
                style: _hashTagStyle,
              )),
          FlatButton(
              onPressed: () {},
              child: Text(
                '#advance',
                style: _hashTagStyle,
              ))
        ],
      ),
    );
  }

  Widget _drawBody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      child: Image(
        image: ExactAssetImage('assets/images/pg1.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _drawFooter() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(onPressed: (){}, child: Text('COMMENTS', style: _fotterStyle,),),
          Row(
            children: [
              FlatButton(onPressed: (){}, child: Text('SHARE', style: _fotterStyle,),),
              FlatButton(onPressed: (){}, child: Text('OPEN', style: _fotterStyle,),),
            ],
          ),
        ],
      ),
    );
  }
}

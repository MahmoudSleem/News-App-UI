import 'package:flutter/material.dart';
import 'package:news_app_applecation/shared_ui/navigation_drawar.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter Feeds"),
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
                children: [
                  _cardHeader(),
                  _cardBody(),
                  SizedBox(
                    child: Container(
                      color: Colors.grey.shade200,
                    ),
                    height: 1,
                  ),
                  _cardFooter(),
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _cardHeader() {
    return Row(
      children: <Widget>[
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
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Abo mo3tasem',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                )
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
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 16, bottom: 8),
      child: Text(
        'we can also talk about the future of works as the robot advance , and ',
        style: TextStyle(
          fontSize: 18,
          height: 1.2,
          color: Colors.grey.shade900,
        ),
      ),
    );
  }

  Widget _cardFooter() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.repeat,
                    size: 24,
                  ),
                  color: Colors.orange,
                  onPressed: () {}),
              Text(
                '25',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Text(
                  "SHARE",
                  style: TextStyle(color: Colors.orange),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("OPEN", style: TextStyle(color: Colors.orange)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTwitter() {
    return Container(
      width: double.infinity,
      height: 194,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/pg1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
                width: 50,
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Mahmoud Sleem',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Abo mo3tasem',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              color: Colors.white,
              width: double.infinity,
              height: 200,
              child: Text(
                'Mahmoud Sleem is the Better Mahmoud Sleem is the Better Mahmoud Sleem is the Better Mahmoud Sleem is the Better',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(
            child: Container(
              color: Colors.grey.shade200,
            ),
            height: 1,
          ),
          Container(
            height: 40,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

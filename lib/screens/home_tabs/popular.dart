import 'package:flutter/material.dart';
class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , position ){
        return Card(
          child: _drawSingleRow(),
        );
      },
      itemCount: 20,
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

}

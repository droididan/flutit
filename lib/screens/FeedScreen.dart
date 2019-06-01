import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {

  final comments = [
    'Test',
    'Test'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          FeedItem(true,comments),
          FeedItem(false,comments),
          FeedItem(true,comments),
        ],
      ),
    );
  }
}

class FeedItem extends StatelessWidget {
  final bool isAnswered;
  final List<String> comments;

  FeedItem(this.isAnswered, this.comments);

  @override
  Widget build(BuildContext context) {
    final WHITE_TEXT_STYLE =
        TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

    return Container(
      margin: EdgeInsets.all(13.0),
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        elevation: 8.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    child: CircleAvatar(
                      child: isAnswered
                          ? Text('A', style: WHITE_TEXT_STYLE)
                          : Text('?', style: WHITE_TEXT_STYLE),
                      backgroundColor:
                          isAnswered ? Colors.greenAccent : Colors.redAccent,
                    ),
                  ),
                ),
                Text(
                  'How do I compile iOS project',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 12.0),
            Text('I\'ve tried to compile iOS project and failed, how can...'),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    splashColor: Colors.blueAccent,
                    child: Text('Likes'),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      comments.length > 0 ? CircleAvatar(
                        backgroundColor: (Colors.grey).shade200,
                        maxRadius: 13.0,
                          child: Text(
                        comments.length.toString(),
                        style: TextStyle(color: Colors.black45, fontSize: 10.0, fontWeight: FontWeight.bold),
                      )): Container(),

                      FlatButton(
                        onPressed: () {},
                        splashColor: Colors.blueAccent,
                        child: Text('Commants'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

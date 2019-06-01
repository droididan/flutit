import 'package:flut_it/models/comment.dart';
import 'package:flut_it/models/feed.dart';

class FeedDB {

  static List<Feed> _feedItems = List();

  static get feedItems => _feedItems;

  static addFeedItem(Feed feed) {
    _feedItems.add(feed);
  }

  static addDefaultFeedItems() {
    Feed feed1 = Feed(
        "How to set a SizedBox background color?",
        "I've been searched for this for a while, but without any help. Trying to colorize the box, what should I do?",
        "Thor"
    );
    feed1.addComment(Comment(
      "Batman",
      "Try to set 'backgroundColor: Colors.black for example."
    ));
    feed1.addComment(Comment(
      "Superman",
      "Check this link: https://api.flutter.dev/flutter/widgets/SizedBox-class.html"
    ));

    Feed feed2 = Feed(
        "How do I create a new ListView using ListTile?",
        "Any help please?",
        "Iron Man"
    );

    Feed feed3 = Feed(
        "App is crashing while running on iPhone...",
        "When defining the firebase auth, and then pressing on the relevant gmail account, it crashes. Any idea?",
        "Wolverin"
    );
    feed3.addComment(Comment(
        "Dr Strange",
        "I had this issue a while ago, flutter get resolved it."
    ));

    _feedItems.clear();

    _feedItems.add(feed1);
    _feedItems.add(feed2);
    _feedItems.add(feed3);
    _feedItems.add(feed1);
    _feedItems.add(feed2);
    _feedItems.add(feed3);
    _feedItems.add(feed1);
    _feedItems.add(feed2);
    _feedItems.add(feed3);
    _feedItems.add(feed1);
    _feedItems.add(feed2);
    _feedItems.add(feed3);
    _feedItems.add(feed1);
    _feedItems.add(feed2);
    _feedItems.add(feed3);

  }

}


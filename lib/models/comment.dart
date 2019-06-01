class Comment {

  DateTime _timestamp;
  String _authorId;
  String _content;

  DateTime get timestamp => _timestamp;
  String get content => _content;
  String get authorId => _authorId;

  Comment(String authorId, String content) {
    _authorId = authorId;
    _content = content;
    _timestamp = DateTime.now();
  }

}
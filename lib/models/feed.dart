import 'package:flut_it/models/comment.dart';

class Feed {

  String _title;
  String _content;
  String _authorId;
  List<Comment> _comments;
  List<String> _likes;

  Feed(String title, String content, String authorId) {
    _title = title;
    _content = content;
    _authorId = authorId;
    _comments = List<Comment>();
    _likes = List<String>();
  }

  String get title => _title;
  String get content => _content;
  String get authorId => _authorId;
  List<Comment> get comments => _comments;
  List<String> get likes => _likes;

  addComment(Comment comment) {
    _comments.add(comment);
  }
  
  addLike(String like) {
    _likes.add(like);
  }


}
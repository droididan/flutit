import 'package:flut_it/models/comment.dart';

class Feed {

  String _title;
  String _content;
  String _authorId;
  List<Comment> _comments;

  String get title => _title;
  String get content => _content;
  String get authorId => _authorId;
  List<Comment> get tokens => _comments;

}
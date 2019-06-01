import 'package:flut_it/models/user.dart';

class UsersDB {

  static List<User> _users = List();
  static User _currentUser;

  static User get currentUser => _currentUser;

  static getCurrentUserCount() {
    return _users.length;
  }

  static setCurrentUser(User user) {
    _users.add(user);
    _currentUser = user;
  }

}
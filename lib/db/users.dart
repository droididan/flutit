import 'package:flut_it/models/user.dart';

class Users {

  static List<User> _users;
  static User _currentUser;

  static User get currentUser => _currentUser;

  static setCurrentUser(User user) {
    _users.add(user);
    _currentUser = user;
  }

}
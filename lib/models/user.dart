import 'dart:math';

const int INITIAL_TOKENS = 2000;

class User {

  String _id;
  String _name;
  int _tokens;

  String get id => _id;
  String get name => _name;
  int get tokens => _tokens;

  User(String id, String name) {
    _id = id;
    _name = name;
    _tokens = INITIAL_TOKENS;
  }

  reduceTokens(int amountToReduce) {
    _tokens = max(0, _tokens - amountToReduce);
  }

  setTokens(int tokens) {
    _tokens = max(0, tokens);
  }

}
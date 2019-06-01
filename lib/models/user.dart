import 'dart:math';

const int INITIAL_TOKENS = 2000;

class User {

  String _id;
  String _name;
  String _skill;
  int _tokens;

  String get id => _id;
  String get name => _name;
  String get skill => _skill;
  int get tokens => _tokens;

  User(String id, String name, String skill) {
    _id = id;
    _name = name;
    _skill = skill;
    _tokens = INITIAL_TOKENS;
  }

  reduceTokens(int amountToReduce) {
    _tokens = max(0, _tokens - amountToReduce);
  }

  setTokens(int tokens) {
    _tokens = max(0, tokens);
  }

}
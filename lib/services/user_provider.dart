import 'package:flutter/material.dart';

import 'package:states_app/models/user.dart';

class UserService extends ChangeNotifier {
  User? _user;

  User? get user => _user;
  bool get userExist => _user != null ? true : false;

  set user(User? user) {
    _user = user;
    notifyListeners();
  }

  void changeAge(int age) {
    _user?.age = age;
    notifyListeners();
  }

  void removeUser() {
    _user = null;
    notifyListeners();
  }

  void addProfession() {
    if (_user?.professions != null) {
      _user!.professions!.add('Profession ${_user!.professions!.length + 1}');
      notifyListeners();
    }
  }
}

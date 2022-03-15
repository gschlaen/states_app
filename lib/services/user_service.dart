import 'dart:async';

import 'package:states_app/models/user.dart';

//Hago la clase privada para que no pueda instanciarse en otra parte
class _UserService {
  User? _user;

  // El .broadcast permite que el stream tenga mas de un suscriptor. Si no
  // solo se permite un suscriptor
  final StreamController<User> _userStreamController = StreamController.broadcast();

  User? get user => _user;
  bool get userExists => _user != null ? true : false;

  //Getter para exponer el stream a los suscriptores
  Stream<User> get userStream => _userStreamController.stream;

  void loadUser(User user) {
    _user = user;
    //Agrego el user al stream
    _userStreamController.add(user);
  }

  void changeAge(int age) {
    _user?.age = age;
    if (_user != null) {
      _userStreamController.add(_user!);
    }
  }
}

//creo la instancia para que se exporte y utilice donde sea necesario
final userService = new _UserService();

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:states_app/models/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectUser(User user) {
    emit(ActiveUser(user));
  }

  void changeAge(int age) {
    final currentState = state;
    if (currentState is ActiveUser) {
      final newUser = currentState.user.copyWith(age: age);
      emit(ActiveUser(newUser));
    }
  }

  void addProfession() {
    final currentState = state;
    if (currentState is ActiveUser) {
      final newProfessions = [
        ...currentState.user.professions,
        'Profession: ${currentState.user.professions.length + 1}',
      ];
      final newUser = currentState.user.copyWith(professions: newProfessions);
      emit(ActiveUser(newUser));
    }
  }

  void removeUser() {
    emit(UserInitial());
  }
}

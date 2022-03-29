part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {
  final userExist = false;
}

class ActiveUser extends UserState {
  final userExist = true;
  final User user;

  ActiveUser(this.user);
}

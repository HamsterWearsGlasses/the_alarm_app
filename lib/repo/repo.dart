import 'package:the_alarm_app/repo/model/user_model.dart';

abstract class Repo {
  const Repo();
  Future<UserModel?> login();
  Future<bool?> register(UserModel user);
}

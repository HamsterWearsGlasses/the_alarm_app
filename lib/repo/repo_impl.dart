import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_alarm_app/repo/model/user_model.dart';
import 'package:the_alarm_app/repo/repo.dart';

class RepoImpl implements Repo {
  RepoImpl();

  late SharedPreferences tool;

  Future init() async {
    tool = await SharedPreferences.getInstance();
  }

  @override
  Future<UserModel?> login() async {
    try {
      final trueUserName = tool.getString('userName');
      final truePassword = tool.getString("password");
      return UserModel(userName: trueUserName, password: truePassword);
    } catch (e) {
      return const UserModel();
    }
  }

  @override
  Future<bool?> register(UserModel user) async {
    try {
      final saveUserName =
          await tool.setString("userName", user.userName ?? "");
      final savePassword =
          await tool.setString("password", user.password ?? "");
      return saveUserName == true && savePassword == true;
    } catch (e) {
      return false;
    }
  }
}

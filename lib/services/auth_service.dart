import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future <void> loginUser(String userName) async {
    SharedPreferences sharedPrefs = await _prefs;
    sharedPrefs.setString('userName', userName)
  }

  void logoutUser() {}

  String getUserName() {
    return "Willis";
  }
}

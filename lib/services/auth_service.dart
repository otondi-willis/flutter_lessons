import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  void loginUser() {}
  void logoutUser() {}

  String getUserName() {
    return "Willis";
  }
}

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService extends ChangeNotifier {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> loginUser(String userName) async {
    try {
      await _prefs.setString('userName', userName);
    } catch (e) {
      print('Error logging in: $e');
    }
  }

  Future<bool> isLoggedIn() async {
    String? username = await _prefs.getString('username');
    if (username == null) {
      return false;
    }
    return true;
  }

  Future<void> logoutUser() async {
    try {
      await _prefs.clear();
    } catch (e) {
      print('Error logging out: $e');
    }
  }

  Future<String?> getUserName() async {
    return _prefs.getString('userName') ?? "Default Value";
  }

  void updateUserName(String newName) async {
    await _prefs.setString('userName', newName);
    notifyListeners();
  }
}

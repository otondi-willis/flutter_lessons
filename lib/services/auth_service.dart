import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static init() async {
    _prefs = await  SharedPreferences.getInstance();
  }

  static late final Future<SharedPreferences> _prefs;
  Future<void> loginUser(String userName) async {
    try {
      SharedPreferences sharedPrefs = await _prefs;
      sharedPrefs.setString('userName', userName);
    } catch (e) {
      print('Error logging in: $e');
    }
  }

  void logoutUser() async {
    SharedPreferences sharedPrefs = await _prefs;
    sharedPrefs.clear();
  }

  Future<String?> getUserName() async {
    SharedPreferences sharedPrefs = await _prefs;
    return sharedPrefs.getString('userName') ?? "Default Value";
  }
}

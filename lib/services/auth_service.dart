import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future <void> loginUser(String userName) async {
    try{
    SharedPreferences sharedPrefs = await _prefs;
    sharedPrefs.setString('userName', userName);
    } catch (e) {
      print('Error logging in: $e');
   }
  }

  void logoutUser() {}

  String getUserName() {
    return "Willis";
  }
}

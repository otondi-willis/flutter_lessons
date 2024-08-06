import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static init() async {
    _prefs = await SharedPreferences.getInstance();
    //await SharedPreferences.getInstance();
  }

  static late final Future<SharedPreferences> _prefs;
  Future<void> loginUser(String userName) async {
    try {
      _prefs.setString('userName', userName);
    } catch (e) {
      print('Error logging in: $e');
    }
  }

  void logoutUser() async {
    _prefs.clear();
  }

  Future<String?> getUserName() async {
  
    return _prefs.getString('userName') ?? "Default Value";
  }
}

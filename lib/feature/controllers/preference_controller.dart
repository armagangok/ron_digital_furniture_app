import 'package:shared_preferences/shared_preferences.dart';

class PreferenceController {
  Future<void> saveUserInfo(UserModel userModel) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    await preferences.setString("email", userModel.email);
    await preferences.setString("password", userModel.password);
  }

  Future<UserModel> getUserInfo() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    return UserModel(
        email: preferences.getString("email") ?? "null email",
        password: preferences.getString("passwords") ?? "null password");
  }

  Future<bool?> checkLoginStatus() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    print("*****************");
    print("getting token...");

    print(preferences.getBool("token"));

    return preferences.getBool("token");
  }

  Future<void> saveToken(bool token) async {
    print("*****************");
    print("saving token...");
    print(token);
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool("token", token);
  }

  // void removeToken(bool token) async {
  //   final SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setBool("token", token);
  // }
}

class UserModel {
  String email;
  String password;
  UserModel({
    required this.email,
    required this.password,
  });
}

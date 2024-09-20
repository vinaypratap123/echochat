
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesService {
  // Future<void> saveLoginData(LoginModel loginData) async {
  //   final SharedPreferences sharedPreferences =
  //   await SharedPreferences.getInstance();
  //   sharedPreferences.setString("token", loginData.token);
  // }

  // Future<LoginModel> getLoginData() async {
  //   final SharedPreferences sharedPreferences =
  //   await SharedPreferences.getInstance();
  //   final String? token = sharedPreferences.getString("token");
  //   return LoginModel(
  //     token: token.toString(),
  //   );
  // }

  Future<bool> remove() async {
    final SharedPreferences sharedPreferences =
    await SharedPreferences.getInstance();
    bool isRemove = await sharedPreferences.clear();
    return isRemove;
  }
}

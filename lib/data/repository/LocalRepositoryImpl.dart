import 'package:shared_preferences/shared_preferences.dart';
import 'package:sip_ruedaz/domain/models/UserModel.dart';
import 'package:sip_ruedaz/domain/repository/LocalRepository.dart';

const _keyUserToken = 'USERTOKEN';
const _keyName = 'NAME';
const _keyUserName = 'USERNAME';

class LocalRepositoryImpl extends LocalRepositoryInterface {
  @override
  Future<void> clearData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
    throw UnimplementedError();
  }

  @override
  Future<String> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString(_keyUserToken);
    throw UnimplementedError();
  }

  @override
  Future<String> setToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_keyUserToken, token);
    throw UnimplementedError();
  }

  @override
  Future<User> getUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final username = sharedPreferences.getString(_keyUserName);
    final name = sharedPreferences.getString(_keyName);
    final user = User(
      name: name,
      username: username,
    );
    return user;
  }

  @override
  Future<User> saveUser(User user) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(user.username, user.name);
    sharedPreferences.setString(user.name, user.name);
    return user;
  }
}

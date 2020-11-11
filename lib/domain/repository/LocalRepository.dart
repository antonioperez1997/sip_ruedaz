import 'package:sip_ruedaz/domain/models/UserModel.dart';

abstract class LocalRepositoryInterface {
  Future<String> getToken();
  Future<void> clearData();
  Future<User> saveUser(User user);
  Future<User> getUser();
  Future<String> setToken(String token);
}

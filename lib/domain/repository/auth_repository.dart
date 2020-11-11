import 'package:sip_ruedaz/domain/model/user.dart';
import 'package:sip_ruedaz/domain/request/login_request.dart';
import 'package:sip_ruedaz/domain/response/login_response.dart';

abstract class AuthRepositoryInterface {
  Future<User> getUserFromToken(String token);
  Future<LoginResponse> login(LoginRequest login);
  Future<void> logout(String token);
}

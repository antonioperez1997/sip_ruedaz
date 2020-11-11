import 'package:sip_ruedaz/domain/exceptions/auth_exceptions.dart';
import 'package:sip_ruedaz/domain/model/user.dart';
import 'package:sip_ruedaz/domain/repository/auth_repository.dart';
import 'package:sip_ruedaz/domain/response/login_response.dart';
import 'package:sip_ruedaz/domain/request/login_request.dart';

class AuthRepositoryImpl extends AuthRepositoryInterface {
  @override
  Future<User> getUserFromToken(String token) {
    // TODO: implement getUserFromToken
    throw AuthException();
  }

  @override
  Future<LoginResponse> login(LoginRequest login) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout(String token) {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

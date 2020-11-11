import 'package:sip_ruedaz/domain/model/User.dart';

class LoginResponse {
  final String token;
  final User user;

  const LoginResponse(this.token, this.user);
}

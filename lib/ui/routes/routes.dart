import 'package:get/route_manager.dart';
import 'package:sip_ruedaz/ui/pages/homePage/HomePage.dart';
import 'package:sip_ruedaz/ui/pages/loginPage/LoginPage.dart';
import 'package:sip_ruedaz/ui/pages/splashPage/SplashPage.dart';

class Routes {
  static final String splash = "/splash";
  static final String login = "/login";
  static final String home = "/home";
}

class RoutePages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
    ),
  ];
}

import 'package:get/route_manager.dart';
import 'package:sip_ruedaz/ui/pages/homePage/homePage.dart';
import 'package:sip_ruedaz/ui/pages/loginPage/loginPage.dart';
import 'package:sip_ruedaz/ui/pages/splashPage/splashPage.dart';

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

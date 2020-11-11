import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';
import 'package:sip_ruedaz/ui/main_binfing.dart';

import 'ui/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.splash,
      getPages: RoutePages.pages,
      initialBinding: MainBinding(),
    );
  }
}

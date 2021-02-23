import 'dart:io';

import 'package:flutter/material.dart';
import 'package:remedi_flutter_base_app/firebase_config.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';
import 'package:remedi_flutter_plugin_auth/auth.dart';
import 'package:remedi_flutter_plugin_update/force_update.dart';

import 'app_routes.dart' as routes;
import 'app_theme.dart' as appTheme;
import 'example_app.dart';
import 'resources/app_images.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Auth.init(
      kakaoAppId: "2d097d3c402c32951f7cb13e87f63b8c",
      enableKakao: true,
      enableApple: Platform.isIOS,
      enableEmailPassword: false);

  ForceUpdate.init(
      image: AppImages.brandLogo,
      iosAppId: "1520566880",
      aosAppId: "com.remedi.alter");

  runApp(ExampleApp(
    generateRoutes: routes.generateRoute,
    initialRoute: SplashPage.ROUTE_NAME_APP_OPEN,
    theme: appTheme.appTheme,
  ));
}

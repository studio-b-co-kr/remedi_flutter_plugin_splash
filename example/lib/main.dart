import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:remedi_flutter_base_app/firebase_config.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';
import 'package:remedi_flutter_plugin_auth/auth.dart';
import 'package:remedi_flutter_plugin_update/force_update.dart';

import 'app_routes.dart' as routes;
import 'app_theme.dart' as appTheme;
import 'resources/app_images.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppConfig.setFlavorConfig(isRelease: kReleaseMode, enablePrintLog: true);
  await AppConfig.init();

  Auth.init(
      kakaoAppId: "2d097d3c402c32951f7cb13e87f63b8c",
      enableKakao: true,
      enableApple: Platform.isIOS,
      enableEmailPassword: false);

  ForceUpdate.init(
      image: AppImages.brandLogo,
      iosAppId: "1520566880",
      aosAppId: "com.remedi.alter");

  await FirebaseConfig.init(
      enableCrashlytics: true, enableAnalytics: true, enablePerformance: true);

  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  runApp(AppContainer(
    appManager: AppManager(
        navigatorKey: navigatorKey,
        logoBrand: AppImages.brandLogo,
        logoCompany: AppImages.companyLogo),
    app: MaterialApp(
      theme: appTheme.appTheme,
      navigatorKey: navigatorKey,
      onGenerateRoute: (settings) => routes.generateRoute(settings),
      initialRoute: SplashPage.ROUTE_NAME_APP_OPEN,
    ),
  ));
}

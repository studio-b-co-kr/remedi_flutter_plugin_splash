import 'package:example/feature/login/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';
import 'package:remedi_flutter_plugin_auth/auth.dart';
import 'package:remedi_flutter_plugin_auth/feature/login/login_page.dart';
import 'package:remedi_flutter_plugin_auth/feature/login/login_viewmodel.dart';
import 'package:remedi_flutter_plugin_update/feature/force_update_page.dart';

import 'feature/home/home_page.dart';
import 'feature/splash/splash_repository.dart';
import 'resources/app_images.dart';

GenerateRoutes generateRoute =
    (RouteSettings settings, {Stream<Map<dynamic, dynamic>> deepLinkStream}) {
  Route<dynamic> ret;
  switch (settings.name) {
    case LoginPage.ROUTE_NAME:
      ret = MaterialPageRoute(
          settings: settings,
          builder: (context) => LoginPage(
                logoCompany: AppImages.brandLogo,
                logoBrand: AppImages.brandLogo,
                routeBackTo: settings.arguments,
                viewModel: LoginViewModel(
                    kakaoAppId: Auth.kakaoAppId, repo: LoginRepository()),
              ));
      break;
    case LoginPage.ROUTE_NAME_SPLASH:
      ret = MaterialPageRoute(
          settings: settings,
          builder: (context) => LoginPage(
                logoCompany: AppImages.brandLogo,
                logoBrand: AppImages.brandLogo,
                routeBackTo: SplashPage.ROUTE_NAME_AFTER_LOGIN,
                viewModel: LoginViewModel(
                    kakaoAppId: Auth.kakaoAppId, repo: LoginRepository()),
              ));
      break;
    case ForceUpdatePage.ROUTE_NAME:
      ret = MaterialPageRoute(
          settings: settings, builder: (context) => ForceUpdatePage());
      break;
    case SplashPage.ROUTE_NAME_APP_OPEN:
      ret = MaterialPageRoute(
        settings: settings,
        builder: (context) => SplashPage(
            contentsPageRouteName: HomePage.ROUTE_NAME,
            loginPageRouteName: LoginPage.ROUTE_NAME_SPLASH,
            viewModel:
                SplashViewModel(settings.name, repo: SplashRepository())),
      );

      break;
    case HomePage.ROUTE_NAME:
      ret = HomePage.route(settings, SplashRepository());
      break;
  }

  return ret;
};

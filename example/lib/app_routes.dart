import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

import 'feature/home/home_page.dart';
import 'feature/splash/splash_repository.dart';

GenerateRoutes generateRoute =
    (RouteSettings settings, {Stream<Map<dynamic, dynamic>> deepLinkStream}) {
  Route<dynamic> ret;
  switch (settings.name) {
    case SplashPage.ROUTE_NAME_APP_OPEN:
      ret = MaterialPageRoute(
        settings: settings,
        builder: (context) => SplashPage(
            contentsPageRouteName: HomePage.ROUTE_NAME,
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

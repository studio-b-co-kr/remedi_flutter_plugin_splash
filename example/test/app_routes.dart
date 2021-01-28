import 'package:example/feature/splash/splash_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

GenerateRoutes generateRoute =
    (RouteSettings settings, {Stream<Map<dynamic, dynamic>> deepLinkStream}) {
  Route<dynamic> ret;
  switch (settings.name) {
    case SplashPage.ROUTE_NAME:
      ret = SplashPage.route(settings, SplashRepository());
      break;
  }

  return ret;
};

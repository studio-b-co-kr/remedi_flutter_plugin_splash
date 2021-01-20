import 'package:remedi_flutter_base/remedi_flutter_base.dart';

GenerateRoutes generateRoute =
    (RouteSettings settings, {Stream<Map<dynamic, dynamic>> deepLinkStream}) {
  Route<dynamic> ret;
  switch (settings.name) {
    case SplashPage.ROUTE_NAME:
      ret = SplashPage.route(settings);
      break;
  }

  return ret;
};

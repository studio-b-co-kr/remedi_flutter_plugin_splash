import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

import 'example_app.dart';
import 'app_routes.dart' as routes;
import 'app_theme.dart' as appTheme;

void main() async {
  runApp(ExampleApp(
    generateRoutes: routes.generateRoute,
    generateInitialRoutes: MaterialPageRoute(
      builder: (context) => SplashPage(
        viewModel: SplashViewModel(),
      ),
    ),
    initialRoute: SplashPage.ROUTE_NAME,
    theme: appTheme.appTheme,
  ));
}

import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

import 'app_routes.dart' as routes;
import 'app_theme.dart' as appTheme;
import 'example_app.dart';

void main() async {
  runApp(ExampleApp(
    generateRoutes: routes.generateRoute,
    // generateInitialRoutes: MaterialPageRoute(
    //   builder: (context) => SplashPage(
    //     viewModel: SplashViewModel(repo: SplashRepository()),
    //   ),
    // ),
    initialRoute: SplashPage.ROUTE_NAME,
    theme: appTheme.appTheme,
  ));
}

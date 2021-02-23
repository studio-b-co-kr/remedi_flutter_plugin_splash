import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';

import 'resources/app_images.dart';

class ExampleApp extends StatelessWidget {
  final GenerateRoutes generateRoutes;
  final String initialRoute;
  final ThemeData theme;

  const ExampleApp(
      {Key key,
      this.generateRoutes,
      this.initialRoute,
      this.theme,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> navigatorKey =
        new GlobalKey<NavigatorState>();
    return AppContainer(
      appManager: AppManager(
          navigatorKey: navigatorKey,
          logoBrand: AppImages.brandLogo,
          logoCompany: AppImages.companyLogo),
      app: MaterialApp(
        theme: theme,
        navigatorKey: navigatorKey,
        onGenerateRoute: (settings) => generateRoutes(settings),
        // onGenerateInitialRoutes:(routeName) => [generateInitialRoutes],
        initialRoute: this.initialRoute,
      ),
    );
  }
}

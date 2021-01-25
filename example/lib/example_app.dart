import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

import 'resources/app_images.dart';

class ExampleApp extends StatelessWidget {
  final GenerateRoutes generateRoutes;
  final String initialRoute;
  final ThemeData theme;
  final MaterialPageRoute generateInitialRoutes;

  const ExampleApp(
      {Key key,
      this.generateRoutes,
      this.initialRoute,
      this.theme,
      this.generateInitialRoutes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      appManager: AppManager(
          logoBrand: AppImages.brandLogo, logoCompany: AppImages.companyLogo),
      app: MaterialApp(
        theme: theme,
        onGenerateRoute: (settings) => generateRoutes(settings),
        initialRoute: this.initialRoute,
        onGenerateInitialRoutes: (initialRouteName) => [generateInitialRoutes],
      ),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class AppManager {
  final String logoBrand;
  final String logoCompany;
  final GlobalKey<NavigatorState> navigatorKey;

  AppManager({
    this.logoBrand,
    this.logoCompany,
    this.navigatorKey,
  })  : assert(logoBrand != null),
        assert(logoCompany != null),
        assert(navigatorKey != null);

  static NavigatorState navigator(BuildContext context) =>
      Provider.of<AppManager>(context, listen: false).navigatorKey.currentState;
}

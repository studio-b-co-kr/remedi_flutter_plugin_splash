import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';
import 'package:remedi_flutter_base/splash/interface_splash_view_model.dart';
import 'package:remedi_flutter_base/splash/splash_view_model.dart';

import 'splash_view.dart';

class SplashPage extends BasePage<SplashState, SplashViewModel> {
  static const ROUTE_NAME = "/";

  static Route<dynamic> route(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) =>
          SplashPage(viewModel: SplashViewModel(), view: SplashView()),
    );
  }

  final String permissionPageRouteName;
  final String loginPageRouteName;
  final String introPageRouteName;
  final String onBoardingPageRouteName;

  SplashPage({
    Key key,
    this.permissionPageRouteName,
    this.loginPageRouteName,
    this.introPageRouteName,
    this.onBoardingPageRouteName,
    ISplashViewModel viewModel,
    SplashView view,
  }) : super(key: key, viewModel: viewModel, view: view);

  @override
  String get screenName => "splash";

  @override
  Future logScreenOpen() async {}
  @override
  onListen(BuildContext context, SplashState state) {
  }
}

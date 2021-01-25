import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';
import 'package:remedi_flutter_base/splash/splash_view_model.dart';
import 'package:remedi_flutter_base/viewmodel/i_splash_view_model.dart';

import 'splash_view.dart';

class SplashPage
    extends BasePage<SplashViewState, ISplashRepository, ISplashViewModel> {
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
  onListen(BuildContext context, SplashViewState state) async {
    switch (state) {
      case SplashViewState.Init:
        viewModel.init();
        break;
      case SplashViewState.Login:
        if (loginPageRouteName != null && loginPageRouteName.contains('/')) {
          await Navigator.of(context).pushNamed(loginPageRouteName);
        }
        break;
      case SplashViewState.Onboarding:
        if (onBoardingPageRouteName != null &&
            onBoardingPageRouteName.contains('/')) {
          await Navigator.of(context).pushNamed(onBoardingPageRouteName);
        }
        break;
      case SplashViewState.Permission:
        if (permissionPageRouteName != null &&
            permissionPageRouteName.contains('/')) {
          await Navigator.of(context).pushNamed(permissionPageRouteName);
        }
        break;
      case SplashViewState.Intro:
        if (introPageRouteName != null && introPageRouteName.contains('/')) {
          await Navigator.of(context).pushNamed(introPageRouteName);
        }
        break;
      case SplashViewState.Error:
        // TODO: Handle this case.
        break;
    }
  }
}

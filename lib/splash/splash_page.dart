import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';
import 'package:remedi_flutter_base/splash/splash_view_model.dart';
import 'package:remedi_flutter_base/ui/splash_ui.dart';
import 'package:remedi_flutter_base/viewmodel/i_splash_view_model.dart';

import 'splash_view.dart';

class SplashPage extends BasePage<ISplashViewModel> implements SplashUi {
  static const ROUTE_NAME = "/";

  static Route<dynamic> route(
      RouteSettings settings, ISplashRepository repository) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) =>
          SplashPage(viewModel: SplashViewModel(repository: repository)),
    );
  }

  final String forceUpdatePageRouteName;
  final String permissionPageRouteName;
  final String loginPageRouteName;
  final String introPageRouteName;
  final String onBoardingPageRouteName;
  final String homePageRouteName;

  SplashPage({
    Key key,
    this.forceUpdatePageRouteName,
    this.permissionPageRouteName,
    this.loginPageRouteName,
    this.introPageRouteName,
    this.onBoardingPageRouteName,
    this.homePageRouteName,
    ISplashViewModel viewModel,
  }) : super(key: key, viewModel: viewModel);

  @override
  String get screenName => "splash";

  @override
  Future logScreenOpen() async {}

  @override
  onListen(BuildContext context, ISplashViewModel viewModel) async {
    super.onListen(context, viewModel);
    switch (viewModel.state) {
      case SplashViewState.AppOpen:
        viewModel.appOpen();
        break;
      case SplashViewState.Login:
        if (loginPageRouteName != null && loginPageRouteName.contains('/')) {
          var ret = await Navigator.of(context).pushNamed(loginPageRouteName);
        }
        break;
      case SplashViewState.Onboarding:
        if (onBoardingPageRouteName != null &&
            onBoardingPageRouteName.contains('/')) {
          var ret =
              await Navigator.of(context).pushNamed(onBoardingPageRouteName);
        }
        break;
      case SplashViewState.Permission:
        if (permissionPageRouteName != null &&
            permissionPageRouteName.contains('/')) {
          var ret =
              await Navigator.of(context).pushNamed(permissionPageRouteName);
        }
        break;
      case SplashViewState.Intro:
        if (introPageRouteName != null && introPageRouteName.contains('/')) {
          var ret = await Navigator.of(context).pushNamed(introPageRouteName);
        }
        break;
      case SplashViewState.Error:
        break;
      case SplashViewState.ForceUpdate:
        if (forceUpdatePageRouteName != null &&
            forceUpdatePageRouteName.contains('/')) {
          var ret =
              await Navigator.of(context).pushNamed(forceUpdatePageRouteName);
          if (ret != null) {
            viewModel.afterForceUpdate();
            return;
          }
        }
        break;
      case SplashViewState.ReadyToService:
        break;
      case SplashViewState.GoHome:
        goHome(context);
        break;
    }
  }

  @override
  goHome(BuildContext buildContext) {
    AppManager.navigator(buildContext).popAndPushNamed(this.homePageRouteName);
  }

  @override
  BindingView<ISplashViewModel> body(
      BuildContext context, ISplashViewModel viewModel, Widget child) {
    return SplashView();
  }
}

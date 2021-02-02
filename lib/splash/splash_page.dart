import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';
import 'package:remedi_flutter_base/ui/splash_ui.dart';
import 'package:remedi_flutter_base/viewmodel/i_splash_view_model.dart';

import 'splash_view.dart';

class SplashPage extends BasePage<ISplashViewModel> implements SplashUi {
  static const ROUTE_NAME_APP_OPEN = "/";
  static const ROUTE_NAME_AFTER_INTRO = "/after_intro";
  static const ROUTE_NAME_AFTER_PERMISSION = "/after_permission";
  static const ROUTE_NAME_AFTER_LOGIN = "/after_login";
  static const ROUTE_NAME_AFTER_ONBOARDING = "/after_onboarding";

  final String forceUpdatePageRouteName;
  final String permissionPageRouteName;
  final String loginPageRouteName;
  final String introPageRouteName;
  final String onBoardingPageRouteName;
  final String contentsPageRouteName;

  SplashPage({
    Key key,
    this.forceUpdatePageRouteName,
    this.permissionPageRouteName,
    this.loginPageRouteName,
    this.introPageRouteName,
    this.onBoardingPageRouteName,
    this.contentsPageRouteName,
    ISplashViewModel viewModel,
  })  : assert(contentsPageRouteName != null),
        super(key: key, viewModel: viewModel);

  @override
  String get screenName => "splash";

  @override
  Future logScreenOpen() async {}

  @override
  onListen(BuildContext context, ISplashViewModel viewModel) async {
    super.onListen(context, viewModel);
    switch (viewModel.state) {
      case SplashViewState.AppOpen:
        break;
      case SplashViewState.Login:
        if (loginPageRouteName != null && loginPageRouteName.contains('/')) {
          Navigator.of(context).pushReplacementNamed(loginPageRouteName);
          return;
        }
        viewModel.afterLogin();
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
      case SplashViewState.GoContentsPage:
        goContentsPage(context);
        break;
    }
  }

  @override
  goContentsPage(BuildContext buildContext) {
    Navigator.of(buildContext).popAndPushNamed(this.contentsPageRouteName);
  }

  @override
  BindingView<ISplashViewModel> body(
      BuildContext context, ISplashViewModel viewModel, Widget child) {
    return SplashView();
  }
}

import 'package:remedi_flutter_base/remedi_flutter_base.dart';
import 'package:remedi_flutter_base/splash/spalsh_view_model.dart';

import 'splash_view.dart';

class SplashPage extends BasePage<SplashViewModel> {
  static const ROUTE_NAME = "/";
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
    SplashViewModel viewModel,
  }) : super(key: key, viewModel: viewModel);

  @override
  BaseView<SplashViewModel> buildView(BuildContext buildContext) {
    return SplashView();
  }

  @override
  Future loggingOpen() async {}

  @override
  String get screenName => "splash";
}

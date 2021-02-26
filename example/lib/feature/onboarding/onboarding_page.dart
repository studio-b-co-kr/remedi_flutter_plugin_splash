import 'package:example/viewmodel/i_onboarding_viewmodel.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_plugin_splash/splash.dart';

import 'onboarding_view.dart';

class OnboardingPage extends BasePage<IOnboardingViewModel> {
  static const ROUTE_NAME = "/onboarding";

  OnboardingPage({IOnboardingViewModel viewModel})
      : super(viewModel: viewModel);

  @override
  OnboardingView body(BuildContext context, viewModel, Widget child) {
    return OnboardingView();
  }

  @override
  Future logScreenOpen() async {}

  @override
  String get screenName => "onboarding";

  @override
  void onListen(BuildContext context, IOnboardingViewModel viewModel) {
    super.onListen(context, viewModel);
    switch (viewModel.state) {
      case OnboardingViewState.Init:
        break;
      case OnboardingViewState.Finish:
        Navigator.of(context)
            .pushReplacementNamed(SplashPage.ROUTE_NAME_AFTER_ONBOARDING);
        break;
    }
  }
}

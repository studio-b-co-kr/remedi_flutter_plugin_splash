import 'package:example/viewmodel/i_onboarding_viewmodel.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';

import 'onboarding_view.dart';

class OnboardingPage extends BasePage<IOnboardingViewModel> {
  static const ROUTE_NAME = "/onboarding";

  @override
  OnboardingView body(BuildContext context, viewModel, Widget child) {
    return OnboardingView();
  }

  @override
  Future logScreenOpen() async {}

  @override
  String get screenName => "onboarding";
}

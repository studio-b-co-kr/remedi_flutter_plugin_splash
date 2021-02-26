import 'package:example/viewmodel/i_intro_viewmodel.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_plugin_splash/splash.dart';

import 'intro_view.dart';

class IntroPage extends BasePage<IIntroViewModel> {
  static const ROUTE_NAME = "/intro";

  IntroPage({IIntroViewModel viewModel}) : super(viewModel: viewModel);

  @override
  IntroView body(
      BuildContext context, IIntroViewModel viewModel, Widget child) {
    return IntroView();
  }

  @override
  Future logScreenOpen() async {}

  @override
  String get screenName => "intro";

  @override
  void onListen(BuildContext context, IIntroViewModel viewModel) {
    super.onListen(context, viewModel);
    switch (viewModel.state) {
      case IntroViewState.Init:
        break;
      case IntroViewState.Finish:
        Navigator.of(context)
            .pushReplacementNamed(SplashPage.ROUTE_NAME_AFTER_INTRO);
        break;
    }
  }
}

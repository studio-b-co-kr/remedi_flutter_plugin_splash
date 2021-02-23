import 'package:example/viewmodel/i_intro_viewmodel.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';

import 'intro_view.dart';

class IntroPage extends BasePage<IIntroViewModel> {
  static const ROUTE_NAME = "/intro";

  @override
  IntroView body(
      BuildContext context, IIntroViewModel viewModel, Widget child) {
    return IntroView();
  }

  @override
  Future logScreenOpen() async {}

  @override
  String get screenName => "intro";
}

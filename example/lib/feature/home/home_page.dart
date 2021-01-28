import 'package:example/viewmodel/i_home_viewmodel.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

import 'home_view.dart';

class HomePage extends BasePage<IHomeViewModel> {
  static const ROUTE_NAME = "/home";

  @override
  String get screenName => "home";

  @override
  Future logScreenOpen() async {}

  @override
  BindingView<IHomeViewModel> body(
      BuildContext context, IHomeViewModel viewModel, Widget child) {
    return HomeView();
  }
}

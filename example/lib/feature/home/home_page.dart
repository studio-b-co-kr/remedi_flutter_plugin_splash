import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

import 'home_view.dart';
import 'home_view_model.dart';

class HomePage extends BasePage<HomeViewState, HomeViewModel> {
  static const ROUTE_NAME = "/home";

  @override
  BindingView<BaseViewModel> buildView(BuildContext buildContext) {
    return HomeView();
  }

  @override
  String get screenName => "home";

  @override
  Future logScreenOpen() async {}
}

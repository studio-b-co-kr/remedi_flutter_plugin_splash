import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

import 'home_view.dart';

class HomePage extends BasePage {
  static const ROUTE_NAME = "/home";

  @override
  BaseView<BaseViewModel> buildView(BuildContext buildContext) {
    return HomeView();
  }

  @override
  Future loggingOpen() async {}

  @override
  String get screenName => "home";
}

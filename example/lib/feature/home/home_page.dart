import 'package:example/viewmodel/i_home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';
import 'package:remedi_flutter_base/repository/i_splash_repository.dart';

import 'home_view.dart';
import 'home_view_model.dart';

class HomePage extends BasePage<IHomeViewModel> {
  static const ROUTE_NAME = "/home";

  static Route<dynamic> route(
      RouteSettings settings, ISplashRepository repository) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => HomePage(viewModel: HomeViewModel()),
    );
  }

  HomePage({Key key, IHomeViewModel viewModel})
      : super(key: key, viewModel: viewModel);

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

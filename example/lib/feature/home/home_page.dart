import 'package:example/repository/i_home_repository.dart';
import 'package:example/viewmodel/i_home_viewmodel.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

class HomePage
    extends BasePage<HomeViewState, IHomeRepository, IHomeViewModel> {
  static const ROUTE_NAME = "/home";

  @override
  String get screenName => "home";

  @override
  Future logScreenOpen() async {}
}

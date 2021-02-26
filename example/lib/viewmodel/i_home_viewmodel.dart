import 'package:example/repository/i_home_repository.dart';
import 'package:remedi_flutter_plugin_splash/splash.dart';

abstract class IHomeViewModel
    extends BaseViewModel<HomeViewState, IHomeRepository> {
  logout();
}

enum HomeViewState {
  Init,
  Logout,
}

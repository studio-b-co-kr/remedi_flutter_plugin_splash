import 'package:example/repository/i_home_repository.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';

abstract class IHomeViewModel
    extends BaseViewModel<HomeViewState, IHomeRepository> {
  logout();
}

enum HomeViewState {
  Init,
  Logout,
}

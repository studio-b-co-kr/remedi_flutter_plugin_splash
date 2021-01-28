import 'package:example/repository/i_home_repository.dart';
import 'package:example/viewmodel/i_home_viewmodel.dart';

import 'home_repository.dart';

class HomeViewModel extends IHomeViewModel {
  @override
  get initState => HomeViewState.Init;

  @override
  IHomeRepository get repository => HomeRepository();
}

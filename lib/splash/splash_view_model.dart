import 'package:flutter_clean_arch/clean_architecture.dart';

import 'interface_splash_repository.dart';
import 'interface_splash_view_model.dart';

class SplashViewModel extends ISplashViewModel {
  SplashViewModel({ISplashRepository repository}) : super(repository:repository);

  @override
  get initState => SplashViewState.Init;
}
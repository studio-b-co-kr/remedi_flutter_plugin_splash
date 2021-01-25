import 'package:flutter_clean_arch/clean_architecture.dart';
import 'package:remedi_flutter_base/splash/interface_splash_view_model.dart';

class SplashViewModel<ISplashRepository> extends BaseViewModel<SplashState>
    implements ISplashViewModel {
  @override
  get initState => SplashState.Init;

  @override
  // TODO: implement repository
  ISplashRepository get repository => throw UnimplementedError();
}

enum SplashState {
  Init,
}

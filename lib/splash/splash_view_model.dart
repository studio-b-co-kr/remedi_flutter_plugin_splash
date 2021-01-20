import 'package:flutter_clean_arch/clean_architecture.dart';

class SplashViewModel extends BaseViewModel<SplashState> {
  @override
  // TODO: implement initState
  get initState => SplashState.Init;
}

enum SplashState {
  Init,
}

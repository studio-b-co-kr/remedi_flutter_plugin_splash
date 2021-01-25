import '../remedi_flutter_base.dart';

abstract class ISplashViewModel
    extends BaseViewModel<SplashViewState, ISplashRepository> {
  ISplashViewModel({ISplashRepository repository})
      : super(repository: repository);

  init();
}

enum SplashViewState {
  Init,
  Login,
  Onboarding,
  Permission,
  Intro,
  Error,
}

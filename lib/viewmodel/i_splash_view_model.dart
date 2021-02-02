import '../remedi_flutter_base.dart';

abstract class ISplashViewModel
    extends BaseViewModel<SplashViewState, ISplashRepository> {
  final String routeName;

  ISplashViewModel(this.routeName);

  appOpen();

  afterAppOpen();

  afterForceUpdate();

  afterIntro();

  afterPermission();

  afterLogin();

  afterOnboarding();

  // Ready to show main contents.
  readyToService();

  showError(AppError error);

  AppError get error;
}

enum SplashViewState {
  Init,
  AppOpen,
  ForceUpdate,
  Intro,
  Permission,
  Login,
  Onboarding,
  ReadyToService,
  GoContentsPage,
  Error,
}

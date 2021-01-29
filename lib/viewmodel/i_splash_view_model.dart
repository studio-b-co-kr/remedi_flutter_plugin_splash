import '../remedi_flutter_base.dart';

abstract class ISplashViewModel
    extends BaseViewModel<SplashViewState, ISplashRepository> {
  appOpen();

  afterAppOpen();

  afterForceUpdate();

  afterIntro();

  afterPermission();

  afterLogin();

  // Ready to show main contents.
  readyToService();

  showError(AppError error);

  AppError get error;
}

enum SplashViewState {
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

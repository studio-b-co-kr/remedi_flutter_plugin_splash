import '../remedi_flutter_base.dart';

abstract class ISplashViewModel
    extends BaseViewModel<SplashViewState, ISplashRepository> {
  ISplashViewModel({ISplashRepository repository})
      : super(repository: repository);

  appOpen();

  afterInit();

  afterForceUpdate();

  afterIntro();

  afterPermission();

  afterLogin();

  // Ready to show main contents.
  readyToService();

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

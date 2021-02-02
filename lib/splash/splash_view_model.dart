import 'package:remedi_flutter_base/error/app_error.dart';

import '../repository/i_splash_repository.dart';
import '../viewmodel/i_splash_view_model.dart';
import 'splash_page.dart';

class SplashViewModel extends ISplashViewModel {
  final ISplashRepository repo;

  SplashViewModel(String routeName, {this.repo})
      : assert(repo != null),
        super(routeName);
  AppError _error;

  @override
  AppError get error => _error;

  init() {
    switch (routeName) {
      case SplashPage.ROUTE_NAME_AFTER_INTRO:
        afterIntro();
        break;
      case SplashPage.ROUTE_NAME_AFTER_PERMISSION:
        afterPermission();
        break;
      case SplashPage.ROUTE_NAME_AFTER_LOGIN:
        afterLogin();
        break;
      case SplashPage.ROUTE_NAME_AFTER_ONBOARDING:
        afterOnboarding();
        break;
      case SplashPage.ROUTE_NAME_APP_OPEN:
      default:
        appOpen();
        break;
    }
  }

  @override
  appOpen() async {
    var ret = await repository.init();
    if (ret is AppError) {
      _error = ret;
      update(state: SplashViewState.Error);
      return;
    }

    afterAppOpen();
  }

  @override
  afterAppOpen() async {
    var ret = await repository.needToUpdate();

    if (ret is AppError || !ret) {
      afterForceUpdate();
      return;
    }

    update(state: SplashViewState.ForceUpdate);
  }

  @override
  afterForceUpdate() async {
    var ret = await repository.doneIntro();
    if (ret is AppError) {
      _error = ret;
      update(state: SplashViewState.Error);
      return;
    }

    if (ret != null && ret) {
      afterIntro();
      return;
    }

    update(state: SplashViewState.Intro);
  }

  @override
  afterIntro() async {
    var ret = await repository.donePermissionGrant();
    if (ret != null && ret) {
      afterPermission();
      return;
    }

    update(state: SplashViewState.Permission);
  }

  @override
  afterPermission() async {
    var ret = await repository.isLoggedIn();
    if (ret != null && ret) {
      afterLogin();
      return;
    }

    update(state: SplashViewState.Login);
  }

  @override
  afterLogin() async {
    var ret = await repository.doneOnboarding();
    if (ret != null && ret) {
      afterOnboarding();
      return;
    }

    update(state: SplashViewState.Login);
  }

  @override
  afterOnboarding() async {
    readyToService();
  }

  @override
  readyToService() async {
    var ret = await repository.readyToService();

    if (ret is AppError) {
      _error = ret;
      return;
    }

    update(state: SplashViewState.GoContentsPage);
  }

  showError(AppError error) {
    update(state: SplashViewState.Error);
  }

  @override
  get initState => SplashViewState.Init;

  @override
  ISplashRepository get repository => repo;
}

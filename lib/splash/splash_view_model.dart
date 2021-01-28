import 'package:remedi_flutter_base/error/app_error.dart';

import '../repository/i_splash_repository.dart';
import '../viewmodel/i_splash_view_model.dart';

class SplashViewModel extends ISplashViewModel {
  final ISplashRepository repo;

  SplashViewModel({this.repo}) : assert(repo != null);

  AppError _error;

  @override
  AppError get error => _error;

  appOpen() async {
    var ret = await repository.init();
    if (ret is AppError) {
      _error = ret;
      update(state: SplashViewState.Error);
      return;
    }

    afterAppOpen();
  }

  afterAppOpen() async {
    var ret = await repository.needToUpdate();

    if (ret is AppError || !ret) {
      afterForceUpdate();
      return;
    }

    update(state: SplashViewState.ForceUpdate);
  }

  afterForceUpdate() async {
    // TODO show intro
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

  afterIntro() async {
    var ret = await repository.donePermissionGrant();
    if (ret != null && ret) {
      afterPermission();
      return;
    }

    update(state: SplashViewState.Permission);
  }

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
      readyToService();
      return;
    }

    update(state: SplashViewState.Login);
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

  @override
  get initState => SplashViewState.AppOpen;

  @override
  ISplashRepository get repository => repo;
}

import '../repository/i_splash_repository.dart';
import '../viewmodel/i_splash_view_model.dart';

class SplashViewModel extends ISplashViewModel {
  SplashViewModel({ISplashRepository repository})
      : super(repository: repository);

  appOpen() async {
    // TODO init app.
    var ret = await repository.init();
    ret = Error();
    if (ret is Error) {
      update(state: SplashViewState.Error);
      return;
    }
    afterInit();
  }

  afterInit() async {
    // TODO check force update
    var ret = await repository.needToUpdate();

    if (ret is Error || !ret) {
      afterForceUpdate();
      return;
    }

    update(state: SplashViewState.ForceUpdate);
  }

  afterForceUpdate() async {
    // TODO show intro
    var ret = await repository.doneIntro();
    if (ret is Error) {
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
    var ret = repository.readyService();

    if (ret is Error) {
      return;
    }

    update(state: SplashViewState.GoHome);
  }

  @override
  get initState => SplashViewState.AppOpen;
}

import '../repository/i_splash_repository.dart';
import '../viewmodel/i_splash_view_model.dart';

class SplashViewModel extends ISplashViewModel {
  SplashViewModel({ISplashRepository repository})
      : super(repository: repository);

  init() async {
    var ret = await repository.init();
    if(ret == Error) {

    }
  }

  @override
  get initState => SplashViewState.Init;
}

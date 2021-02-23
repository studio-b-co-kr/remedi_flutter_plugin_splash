import 'package:example/feature/intro/intro_repository.dart';
import 'package:example/repository/i_intro_repository.dart';
import 'package:example/viewmodel/i_intro_viewmodel.dart';

class IntroViewModel extends IIntroViewModel {
  @override
  IntroViewState get initState => IntroViewState.Init;

  @override
  IIntroRepository get repository => IntroRepository.instance;

  @override
  finish() {
    repository.finish();
    update(state: IntroViewState.Finish);
  }
}

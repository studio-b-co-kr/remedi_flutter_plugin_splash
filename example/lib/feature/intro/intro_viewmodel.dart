import 'package:example/feature/intro/intro_repository.dart';
import 'package:example/feature/repository/i_intro_repository.dart';
import 'package:example/viewmodel/i_intro_viewmodel.dart';

class IntroViewModel extends IIntroViewModel {
  @override
  IntroViewState get initState => IntroViewState.Init;

  @override
  IIntroRepository get repository => IntroRepository();
}

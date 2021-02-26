import 'package:example/repository/i_intro_repository.dart';
import 'package:remedi_flutter_plugin_splash/splash.dart';

abstract class IIntroViewModel
    extends BaseViewModel<IntroViewState, IIntroRepository> {
  finish();
}

enum IntroViewState {
  Init,
  Finish,
}

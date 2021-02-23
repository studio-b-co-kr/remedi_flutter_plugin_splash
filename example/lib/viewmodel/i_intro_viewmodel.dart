import 'package:example/repository/i_intro_repository.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';

abstract class IIntroViewModel
    extends BaseViewModel<IntroViewState, IIntroRepository> {
  finish();
}

enum IntroViewState {
  Init,
  Finish,
}

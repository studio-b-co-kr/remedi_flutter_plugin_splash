import 'package:example/repository/i_onboarding_repository.dart';
import 'package:remedi_flutter_plugin_splash/splash.dart';

abstract class IOnboardingViewModel
    extends BaseViewModel<OnboardingViewState, IOnboardingRepository> {
  finish();
}

enum OnboardingViewState {
  Init,
  Finish,
}

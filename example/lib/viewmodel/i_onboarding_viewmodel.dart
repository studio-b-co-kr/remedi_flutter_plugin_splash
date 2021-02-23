import 'package:example/feature/repository/i_onboarding_repository.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';

abstract class IOnboardingViewModel
    extends BaseViewModel<OnboardingViewState, IOnboardingRepository> {}

enum OnboardingViewState {
  Init,
}

import 'package:example/feature/onboarding/onboarding_repository.dart';
import 'package:example/repository/i_onboarding_repository.dart';
import 'package:example/viewmodel/i_onboarding_viewmodel.dart';

class OnboardingViewModel extends IOnboardingViewModel {
  @override
  OnboardingViewState get initState => OnboardingViewState.Init;

  @override
  IOnboardingRepository get repository => OnboardingRepository.instance;
}

import 'package:example/repository/i_onboarding_repository.dart';

class OnboardingRepository extends IOnboardingRepository {
  static OnboardingRepository _instance;

  static OnboardingRepository get instance {
    if (_instance == null) {
      _instance = OnboardingRepository._();
    }
    return _instance;
  }

  OnboardingRepository._();

  bool _completed = false;

  @override
  Future<bool> completed() async {
    return false;
  }

  @override
  finish() {
    _completed = true;
  }
}

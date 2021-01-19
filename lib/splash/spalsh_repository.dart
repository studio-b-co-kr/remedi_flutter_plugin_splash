abstract class SplashRepository {
  Future<bool> donePermissionGrant();
  Future<bool> doneIntro();
  Future<bool> isLoggedIn();
  Future<bool> doneOnboarding();
}
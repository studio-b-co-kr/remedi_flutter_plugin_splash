import 'package:flutter_clean_arch/clean_architecture.dart';

abstract class ISplashRepository extends BaseRepository {
  Future<bool> donePermissionGrant();

  Future<bool> doneIntro();

  Future<bool> isLoggedIn();

  Future<bool> doneOnboarding();
}

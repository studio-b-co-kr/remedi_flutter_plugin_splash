import 'package:flutter_clean_arch/clean_architecture.dart';

abstract class ISplashRepository extends BaseRepository {
  Future<dynamic> init();

  Future<bool> needToUpdate();

  Future<bool> donePermissionGrant();

  Future<bool> doneIntro();

  Future<bool> isLoggedIn();

  Future<bool> doneOnboarding();

  Future<bool> readyService();
}

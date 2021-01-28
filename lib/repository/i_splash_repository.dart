import 'package:flutter_clean_arch/clean_architecture.dart';

abstract class ISplashRepository extends BaseRepository {
  Future<dynamic> init();

  Future<dynamic> needToUpdate();

  Future<dynamic> donePermissionGrant();

  Future<dynamic> doneIntro();

  Future<dynamic> isLoggedIn();

  Future<dynamic> doneOnboarding();

  Future<dynamic> readyToService();
}

import 'package:stacked_mvvm/stacked_mvvm.dart';

abstract class ISplashRepository extends BaseRepository {
  Future<dynamic> init();

  Future<bool> needToUpdate();

  Future<dynamic> donePermissionGrant();

  Future<dynamic> doneIntro();

  Future<dynamic> isLoggedIn();

  Future<dynamic> doneOnboarding();

  Future<dynamic> readyToService();
}

import 'package:remedi_flutter_base/repository/base_repository.dart';

abstract class ISplashRepository extends BaseRepository {
  Future<bool> donePermissionGrant();

  Future<bool> doneIntro();

  Future<bool> isLoggedIn();

  Future<bool> doneOnboarding();
}

import 'package:example/feature/force_update/force_update_repository.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';
import 'package:remedi_flutter_base_app/repository/i_splash_repository.dart';
import 'package:remedi_flutter_plugin_auth/auth.dart';

class SplashRepository implements ISplashRepository {
  @override
  Future<dynamic> doneIntro() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  Future<dynamic> doneOnboarding() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  Future<dynamic> donePermissionGrant() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  Future<bool> isLoggedIn() async {
    await Future.delayed(Duration(seconds: 1));
    String accessToken = await Auth.accessToken;
    return accessToken != null && accessToken.isNotEmpty;
  }

  @override
  Future init() async {
    // TODO create app id, get app metadata,
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Future<bool> needToUpdate() async {
    return ForceUpdateRepository.instance.needToUpdate;
  }

  @override
  Future<dynamic> readyToService() async {
    return true;
  }
}

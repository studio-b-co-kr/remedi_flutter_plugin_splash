import 'package:remedi_flutter_base/remedi_flutter_base.dart';

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
  Future<dynamic> isLoggedIn() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  Future init() async {
    // TODO create app id, get app metadata,
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Future<bool> needToUpdate() async {
    return false;
  }

  @override
  Future<dynamic> readyToService() async {
    return true;
  }
}

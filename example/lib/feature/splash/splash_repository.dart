import 'package:remedi_flutter_base/remedi_flutter_base.dart';

class SplashRepository implements ISplashRepository {
  @override
  Future<bool> doneIntro() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  Future<bool> doneOnboarding() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  Future<bool> donePermissionGrant() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  Future<bool> isLoggedIn() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  Future init() async {
    // TODO create app id, get app metadata, 
    await Future.delayed(Duration(seconds: 1));
  }
}

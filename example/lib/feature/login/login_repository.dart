import 'package:remedi_flutter_plugin_auth/auth.dart';

class LoginRepository extends ILoginRepository {
  @override
  Future<dynamic> loginWithApple(AppleCredential appleCredential) async {
    return AppCredential(
        userId: "0", accessToken: "access", refreshToken: "refresh");
  }

  @override
  Future<dynamic> loginWithKakao(KakaoCredential credential) async {
    return AppCredential(
        userId: "0", accessToken: "access", refreshToken: "refresh");
  }
}

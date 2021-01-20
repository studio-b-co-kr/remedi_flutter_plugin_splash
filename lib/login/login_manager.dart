class LoginManager {
  static List<LoginMethod> sLoginMethods = [];
  static String sLogoImage;
  static String sVersion;

  static init(
      {List<LoginMethod> loginMethods, String logoImage, String version}) {
    assert(loginMethods != null && loginMethods.length > 0);
    sLoginMethods.addAll(loginMethods);
    sLogoImage = logoImage;
    sVersion = version;
  }
}

enum LoginMethod {
  Kakao,
  Apple,
  EmailPassword,
}

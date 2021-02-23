import 'package:example/repository/i_home_repository.dart';
import 'package:remedi_flutter_plugin_auth/auth.dart';

class HomeRepository extends IHomeRepository {
  @override
  logout() async {
    Auth.deleteAccessToken();
    Auth.deleteRefreshToken();
    Auth.deleteUserId();
  }
}

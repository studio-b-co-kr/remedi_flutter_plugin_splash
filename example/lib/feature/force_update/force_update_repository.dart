import 'package:remedi_flutter_plugin_update/repository/i_force_update_repository.dart';

class ForceUpdateRepository extends IForceUpdateRepository {
  static ForceUpdateRepository _instance;

  static ForceUpdateRepository get instance {
    if (_instance == null) {
      _instance = ForceUpdateRepository._();
    }

    return _instance;
  }

  ForceUpdateRepository._();

  @override
  Future<bool> get needToUpdate async => false;
}

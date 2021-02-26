import 'package:remedi_flutter_plugin_splash/splash.dart';

abstract class IOnboardingRepository extends BaseRepository {
  Future<bool> completed();

  finish();
}

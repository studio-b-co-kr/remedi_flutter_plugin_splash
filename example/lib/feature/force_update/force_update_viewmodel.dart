import 'package:example/feature/force_update/force_update_repository.dart';
import 'package:remedi_flutter_plugin_update/repository/i_force_update_repository.dart';
import 'package:remedi_flutter_plugin_update/viewmodel/i_force_update_viewmodel.dart';

class ForceUpdateViewModel extends IForceUpdateViewModel {
  ForceUpdateViewModel({String iosAppId, String aosAppId})
      : super(iosAppId: iosAppId, aosAppId: aosAppId);

  @override
  ForceUpdateViewState get initState => ForceUpdateViewState.Init;

  @override
  IForceUpdateRepository get repository => ForceUpdateRepository.instance;
}

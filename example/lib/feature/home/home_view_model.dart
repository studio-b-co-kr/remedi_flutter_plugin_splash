import 'package:remedi_flutter_base/remedi_flutter_base.dart';

class HomeViewModel extends BaseViewModel<HomeViewState> {
  @override
  get initState => HomeViewState.Init;
}

enum HomeViewState {
  Init,
}

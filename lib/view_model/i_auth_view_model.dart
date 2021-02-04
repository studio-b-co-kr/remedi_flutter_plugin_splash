import 'package:remedi_flutter_base/error/app_error.dart';
import 'package:remedi_flutter_base/repository/i_auth_repository.dart';
import 'package:stacked_mvvm/stacked_mvvm.dart';

abstract class IAuthViewModel
    extends BaseViewModel<LoginViewState, IAuthRepository> {
  AppError error;
  final String baseUrl;

  IAuthViewModel({this.baseUrl}) : assert(baseUrl != null);

  loginWithKakao();

  loginWithApple();

  login();
}

enum LoginViewState {
  Idle,
  Loading,
  Error,
  Success,
}

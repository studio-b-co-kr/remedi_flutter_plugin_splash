import 'package:flutter/widgets.dart';

abstract class LoginRepository {
  Future saveToken(String userToken);

  Future<T> login<T, R>(R request);

  Future logout();

  pop(BuildContext context, bool result) {
    return Navigator.of(context).pop(result);
  }
}

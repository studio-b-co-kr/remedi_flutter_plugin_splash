import 'package:example/repository/i_intro_repository.dart';

class IntroRepository extends IIntroRepository {
  static IntroRepository _instance;

  bool _completed = false;

  static IntroRepository get instance {
    if (_instance == null) {
      _instance = IntroRepository._();
    }
    return _instance;
  }

  IntroRepository._();

  @override
  finish() async {
    _completed = true;
  }

  @override
  Future<bool> completed() async {
    return _completed;
  }
}

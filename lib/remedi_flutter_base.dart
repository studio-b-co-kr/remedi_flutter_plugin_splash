library remedi_flutter_base;

import 'package:flutter/widgets.dart';

export 'package:stacked_mvvm/stacked_mvvm.dart';

export 'app_container.dart';
export 'app_manager.dart';
export 'error/app_error.dart';
export 'intro/intro.dart';
export 'login/login.dart';
export 'onboarding/onboarding.dart';
export 'permission/permissions.dart';
export 'repository/repository.dart';
export 'splash/splash.dart';

typedef Route<dynamic> GenerateRoutes(RouteSettings settings);

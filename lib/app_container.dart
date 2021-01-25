import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

import 'app_manager.dart';

class AppContainer extends StatelessWidget {
  final MaterialApp app;
  final AppManager appManager;

  AppContainer({Key key, this.app, this.appManager})
      : assert(app != null),
        assert(appManager != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<AppManager>(
      create: (_) => appManager,
      child: app,
    );
  }
}

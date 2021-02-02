import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

import 'app_manager.dart';

class AppContainer extends StatelessWidget with WidgetsBindingObserver {
  final MaterialApp app;
  final AppManager appManager;

  AppContainer({Key key, this.app, this.appManager})
      : assert(app != null),
        assert(appManager != null),
        super(key: key) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Provider<AppManager>(
        create: (_) => appManager, builder: (buildContext, widget) => app);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.detached:
        onDetached();
        break;
      case AppLifecycleState.resumed:
        onResumed();
        break;
      case AppLifecycleState.paused:
        onPaused();
        break;
      case AppLifecycleState.inactive:
        onInactive();
        break;
    }
  }

  @mustCallSuper
  void onResumed() {
    dev.log("onResumed, key = $key, this = $this", name: "AlterApp");
  }

  @mustCallSuper
  void onDetached() {
    dev.log("onResumed, key = $key, this = $this", name: "AlterApp");
  }

  @mustCallSuper
  void onPaused() {
    dev.log("onResumed, key = $key, this = $this", name: "AlterApp");
  }

  @mustCallSuper
  void onInactive() {
    dev.log("onResumed, key = $key, this = $this", name: "AlterApp");
  }
}

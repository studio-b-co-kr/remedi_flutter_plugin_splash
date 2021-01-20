import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

class AppContainer extends StatelessWidget {
  final MaterialApp app;

  AppContainer({Key key, this.app})
      : assert(app != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return app;
  }
}

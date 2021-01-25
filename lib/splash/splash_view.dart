import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/clean_architecture.dart';
import 'package:remedi_flutter_base/splash/splash_view_model.dart';

class SplashView extends BindingView<SplashViewModel> {
  @override
  Widget body(BuildContext buildContext) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            width: 0,
            height: 0,
          ),
        ));
  }
}

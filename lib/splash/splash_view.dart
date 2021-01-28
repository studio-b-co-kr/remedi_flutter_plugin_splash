import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/clean_architecture.dart';
import 'package:multiscreen/multiscreen.dart';
import 'package:provider/provider.dart';
import 'package:remedi_flutter_base/app_manager.dart';
import 'package:remedi_flutter_base/viewmodel/i_splash_view_model.dart';

class SplashView extends BindingView<ISplashViewModel> {
  @override
  Widget build(BuildContext buildContext, ISplashViewModel viewModel) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Spacer(flex: 1),
            Image.asset(
              "${Provider.of<AppManager>(buildContext).logoBrand}",
              width: resize(200),
            ),
            Expanded(
              flex: 3,
              child: Column(children: [
                Spacer(flex: 1),
                viewModel.state == SplashViewState.Error
                    ? Container(
                        child: Column(
                          children: [
                            Text("error message"),
                            Text("errorCode:"),
                            Text("${viewModel.error.stackTrace}"),
                          ],
                        ),
                      )
                    : Container(
                        width: resize(40),
                        height: resize(40),
                        child: CircularProgressIndicator(),
                      ),
                Spacer(flex: 1),
              ]),
            ),
            Image.asset(
              "${Provider.of<AppManager>(buildContext).logoBrand}",
              width: resize(100),
            ),
            SizedBox(height: resize(16)),
          ]),
        ),
      ),
    );
  }
}

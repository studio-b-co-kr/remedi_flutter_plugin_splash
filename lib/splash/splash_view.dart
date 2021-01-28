import 'package:flutter/foundation.dart';
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
                        padding: EdgeInsets.all(16),
                        color: Colors.grey.shade200,
                        width: resize(320),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Text(
                              "${viewModel.error.title} (code : ${viewModel.error.code})",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "${viewModel.error.message}",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 8),
                            kReleaseMode
                                ? Container()
                                : Text(
                                    "${viewModel.error.stackTrace}",
                                    style: TextStyle(fontSize: 16),
                                  ),
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

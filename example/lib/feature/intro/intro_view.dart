import 'package:example/viewmodel/i_intro_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:remedi_flutter_plugin_splash/splash.dart';
import 'package:remedi_flutter_widgets/text.dart';

class IntroView extends BindingView<IIntroViewModel> {
  @override
  Widget build(BuildContext context, IIntroViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IntroView"),
      ),
      body: Column(children: [
        Expanded(
          child: Center(
            child: FixedScaleText(
              text: Text(
                "Example app",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: MaterialButton(
            height: 48,
            minWidth: double.maxFinite,
            textColor: Colors.white,
            color: Colors.purple,
            onPressed: () {
              viewModel.finish();
            },
            child: Text("Finish Intro"),
          ),
        )
      ]),
    );
  }
}

import 'package:example/viewmodel/i_onboarding_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:remedi_flutter_widgets/text.dart';
import 'package:stacked_mvvm/stacked_mvvm.dart';

class OnboardingView extends BindingView<IOnboardingViewModel> {
  @override
  Widget build(BuildContext context, IOnboardingViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding."),
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
            color: Colors.teal,
            onPressed: () {
              viewModel.finish();
            },
            child: Text("Finish Onboarding"),
          ),
        )
      ]),
    );
  }
}

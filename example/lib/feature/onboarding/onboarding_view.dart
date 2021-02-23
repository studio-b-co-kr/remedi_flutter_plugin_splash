import 'package:example/viewmodel/i_onboarding_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked_mvvm/stacked_mvvm.dart';

class OnboardingView extends BindingView<IOnboardingViewModel> {
  @override
  Widget build(BuildContext context, IOnboardingViewModel viewModel) {
    return Scaffold(
      body: Container(),
    );
  }
}

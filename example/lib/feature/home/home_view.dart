import 'package:example/viewmodel/i_home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:remedi_flutter_base/remedi_flutter_base.dart';

class HomeView extends BindingView<IHomeViewModel> {
  @override
  Widget build(BuildContext context, IHomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}

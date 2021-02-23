import 'package:example/viewmodel/i_home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:remedi_flutter_base_app/remedi_flutter_base_app.dart';

class HomeView extends BindingView<IHomeViewModel> {
  @override
  Widget build(BuildContext context, IHomeViewModel viewModel) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.all(16),
          child: MaterialButton(
            textColor: Colors.white,
            height: 48,
            minWidth: double.maxFinite,
            color: Colors.red,
            onPressed: () {
              viewModel.logout();
            },
            child: Text("Logout"),
          ),
        ),
      ),
    );
  }
}

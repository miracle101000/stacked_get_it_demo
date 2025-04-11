import 'package:flutter/material.dart';
import 'package:get_it_demo/ui/views/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder:
          (context, model, child) => Scaffold(
            body: Center(child: Text(model.title)),
            floatingActionButton: FloatingActionButton(
              onPressed: model.updateCounter,
            ),
          ),

      viewModelBuilder: () => StartupViewModel(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get_it_demo/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder:
          (context, model, child) => Scaffold(
            body: Center(child: Text(model.title)),
            floatingActionButton: FloatingActionButton(
              onPressed: model.updateCounter,
            ),
          ),

      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

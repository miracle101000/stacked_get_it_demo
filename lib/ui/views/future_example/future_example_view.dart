import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'future_example_viewmodel.dart';

class FutureExampleView extends StatelessWidget {
  const FutureExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      viewModelBuilder: () => FutureExampleViewModel(),
      builder:
          (_, model, __) => Scaffold(
            body: Center(
              child:
                  model.isBusy
                      ? CircularProgressIndicator()
                      : Column(
                        children: [Text(model.data ?? ""), _ErrorMessage()],
                      ),
            ),
          ),
    );
  }
}

class _ErrorMessage extends ViewModelWidget<FutureExampleViewModel> {
  const _ErrorMessage({super.key}) : super(reactive: true);

  @override
  Widget build(BuildContext context, FutureExampleViewModel model) {
    return model.hasError ? Text(model.data ?? '') : Container();
  }
}

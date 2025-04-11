import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'stream_example_viewmodel.dart';

class StreamExampleView extends StatelessWidget {
  const StreamExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExampleViewModel>.reactive(
      viewModelBuilder: () => StreamExampleViewModel(),
      builder:
          (_, model, __) => Scaffold(body: Center(child: Text(model.title))),
    );
  }
}

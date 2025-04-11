import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'double_increase_counter_view_model.dart';

class DoubleIncreaseCounterView extends StatelessWidget {
  const DoubleIncreaseCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
      builder:
          (_, model, __) => GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: model.updateCounter,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Tap to double counter", textAlign: TextAlign.center),
                  Text(model.counter.toString(), textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
    );
  }
}

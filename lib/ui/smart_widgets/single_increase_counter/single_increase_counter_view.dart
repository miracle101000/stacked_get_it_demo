import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'single_increase_counter_view_model.dart';

class SingleIncreaseCounterView extends StatelessWidget {
  const SingleIncreaseCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SingleIncreaseCounterViewModel(),
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
                  Text("Tap to increment counter", textAlign: TextAlign.center),
                  Text(model.counter.toString(), textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
    );
  }
}

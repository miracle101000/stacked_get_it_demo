import 'package:flutter/material.dart';
import 'package:get_it_demo/ui/views/smart_widgets/single_increase_counter/single_increase_counter_view.dart';

import '../smart_widgets/double_increase_counter/double_increase_counter_view.dart';

class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            SingleIncreaseCounterView(),
            SizedBox(),
            DoubleIncreaseCounterView(),
          ],
        ),
      ),
    );
  }
}

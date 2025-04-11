import 'package:get_it_demo/services/counter_service.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/locator.dart';

class DoubleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.doubleCounter();
    notifyListeners();
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_counterService];
}

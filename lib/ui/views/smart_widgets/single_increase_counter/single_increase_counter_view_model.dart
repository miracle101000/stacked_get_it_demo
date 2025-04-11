import 'package:get_it_demo/app/locator.dart';
import 'package:stacked/stacked.dart';

import '../../../../services/counter_service.dart';

class SingleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_counterService];
}

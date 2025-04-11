import 'package:get_it/get_it.dart';
import 'package:get_it_demo/services/counter_service.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() {
  // locator.registerLazySingleton<ThirdPartyServicesModule>(
  //   () => ThirdPartyServicesModule(),
  // );
  locator.registerLazySingleton<CounterService>(() => CounterService());
}

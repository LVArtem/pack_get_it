import 'package:get_it/get_it.dart';
import 'package:pack_get_it/injected_container.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => InjectedContainer());
}

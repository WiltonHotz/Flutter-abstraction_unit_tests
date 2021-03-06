import 'package:abstraction/services/api/api.dart';
import 'package:abstraction/services/api/fake_api.dart';
import 'package:abstraction/services/api/http_api.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

const bool USE_FAKE_IMPLEMENTATION = true;

void setupLocator() {
  locator.registerLazySingleton<Api>(() => USE_FAKE_IMPLEMENTATION
  ? FakeApi()
  : HttpApi());
}
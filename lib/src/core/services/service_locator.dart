import 'package:get_it/get_it.dart';
import 'package:portafolio_flutter_mmmv/src/core/localization/localization.dart';
import 'package:portafolio_flutter_mmmv/src/core/routes/routes.dart';

GetIt getIt = GetIt.instance;

void serviceLocatorInt() {
  getIt
    ..registerSingleton(RouterCubit(routes: publicRouter))
    // ..registerLazySingleton<LocaleProvider>(LocaleProvider.new)
    ..registerFactory<LocaleProvider>(LocaleProvider.new);
}

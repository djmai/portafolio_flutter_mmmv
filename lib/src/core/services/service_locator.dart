import 'package:get_it/get_it.dart';
import 'package:portafolio_flutter_mmmv/src/core/localization/localization.dart';
import 'package:portafolio_flutter_mmmv/src/features/login/presentation/cubit/login_cubit.dart';

GetIt getIt = GetIt.instance;

void serviceLocatorInt() {
  getIt
    ..registerSingleton<LoginCubit>(LoginCubit())
    ..registerSingleton<LocaleProvider>(LocaleProvider());
}

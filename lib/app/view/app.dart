part of 'blocs_provider.dart';

class App extends StatelessWidget with GetItMixin {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = watchOnly((LocaleProvider m) => m.locale);
    final loginCubit = getIt<LoginCubit>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      locale: locale,
      routerConfig: AppRouter(loginCubit).router,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizationsX.supportedLocales,
    );
  }
}

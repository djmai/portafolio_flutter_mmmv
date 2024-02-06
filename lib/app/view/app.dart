part of 'blocs_provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = getIt<LocaleProvider>();
    final loginCubit = getIt<LoginCubit>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      locale: localeProvider.locale,
      routerConfig: AppRouter(loginCubit).router,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizationsX.supportedLocales,
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portafolio_flutter_mmmv/src/features/features.dart';
import 'package:portafolio_flutter_mmmv/src/features/login/presentation/cubit/cubit.dart';

class AppRouter {
  AppRouter(this.loginCubit)
      : router = GoRouter(
          debugLogDiagnostics: true,
          initialLocation: HomePage.routeName,
          routes: [
            GoRoute(
              name: LoginPage.namePage,
              path: LoginPage.routeName,
              builder: (BuildContext context, GoRouterState state) =>
                  const LoginPage(),
            ),
            GoRoute(
              name: RegisterPage.namePage,
              path: RegisterPage.routeName,
              builder: (BuildContext context, GoRouterState state) =>
                  const RegisterPage(),
            ),
            GoRoute(
              name: HomePage.namePage,
              path: HomePage.routeName,
              builder: (BuildContext context, GoRouterState state) =>
                  const HomePage(),
            ),
          ],
          redirect: (BuildContext context, GoRouterState state) {
            final loggedIn =
                loginCubit.state.status == AuthStatus.authenticated;
            final loggingIn = state.matchedLocation == LoginPage.routeName;

            // Lista de rutas que no deben ser redirigidas
            final excludedRoutes = [
              // HomePage.routeName,
              RegisterPage.routeName,
            ];
            // Verifica si la ruta actual está en la lista de excluidos
            final isExcludedRoute =
                excludedRoutes.contains(state.matchedLocation);

            if (!loggedIn && !isExcludedRoute) {
              return loggingIn ? null : LoginPage.routeName;
            }
            if (loggingIn) {
              return HomePage.routeName;
            }
            return null;
          },
          refreshListenable: GoRouterRefreshStream(loginCubit.stream),
        );

  final LoginCubit loginCubit;
  final GoRouter router;
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

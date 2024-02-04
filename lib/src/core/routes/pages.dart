import 'package:go_router/go_router.dart';
import 'package:portafolio_flutter_mmmv/src/features/features.dart';

part 'names.dart';

final GoRouter publicRouter = GoRouter(
  initialLocation: HomePage.routeName,
  routes: [
    GoRoute(
      path: HomePage.routeName,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

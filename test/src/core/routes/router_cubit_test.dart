import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:portafolio_flutter_mmmv/src/core/routes/routes.dart';

class MockRouterCubit extends Mock implements RouterCubit {}

void main() {
  group('RouterCubit', () {
    late GetIt getIt;

    setUp(() {
      getIt = GetIt.instance
        ..registerLazySingleton<RouterCubit>(
          () => RouterCubit(routes: publicRouter),
        );
    });

    test('initial state', () {
      final routerCubit = getIt<RouterCubit>();

      expect(routerCubit.state, isA<RouterState>());
    });
  });
}

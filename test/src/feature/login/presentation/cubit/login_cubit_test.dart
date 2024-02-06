import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portafolio_flutter_mmmv/src/features/login/presentation/cubit/cubit.dart';

void main() {
  group('LoginCubit', () {
    late LoginCubit loginCubit;

    setUp(() {
      loginCubit = LoginCubit();
    });

    tearDown(() {
      loginCubit.close();
    });

    test('initial state is unauthenticated', () {
      expect(loginCubit.state, const LoginState.unauthenticated());
    });

    blocTest<LoginCubit, LoginState>(
      'emits [authenticated] when login is called',
      build: () => loginCubit,
      act: (cubit) => cubit.login(),
      expect: () => [const LoginState.authenticated()],
    );

    blocTest<LoginCubit, LoginState>(
      'emits [unauthenticated] when logout is called',
      build: () => loginCubit,
      seed: LoginState.authenticated,
      act: (cubit) => cubit.logout(),
      expect: () => [const LoginState.unauthenticated()],
    );
  });
}

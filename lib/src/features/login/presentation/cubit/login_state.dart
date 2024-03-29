part of 'login_cubit.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class LoginState extends Equatable {
  const LoginState._({this.status = AuthStatus.unknown});

  const LoginState.authenticated()
      : this._(
          status: AuthStatus.authenticated,
        );

  const LoginState.unauthenticated()
      : this._(
          status: AuthStatus.unauthenticated,
        );
  final AuthStatus status;

  @override
  List<Object?> get props => [status];
}

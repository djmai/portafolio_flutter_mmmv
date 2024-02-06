part of '../pages/pages.dart';

ElevatedButton btnLogin(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      // router will automatically redirect from /login to / using
      // refreshListenable
      context.read<LoginCubit>().login();
    },
    child: const Text('Login'),
  );
}

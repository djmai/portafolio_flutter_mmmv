import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portafolio_flutter_mmmv/src/features/features.dart';
import 'package:portafolio_flutter_mmmv/src/features/login/presentation/cubit/cubit.dart';

part '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String routeName = '/login';
  static const String namePage = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        // backgroundColor: const Color(0xFF000A1F),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            btnLogin(context),
            ElevatedButton(
              onPressed: () {
                // context.go(
                //   context.namedLocation('register'),
                // );
                context.push(RegisterPage.routeName);
              },
              child: const Text('Go to register'),
            ),
          ],
        ),
      ),
    );
  }
}

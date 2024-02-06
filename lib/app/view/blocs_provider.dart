import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:portafolio_flutter_mmmv/src/core/l10n/l10n.dart';
import 'package:portafolio_flutter_mmmv/src/core/localization/localization.dart';
import 'package:portafolio_flutter_mmmv/src/core/routes/app_router.dart';
import 'package:portafolio_flutter_mmmv/src/core/services/services.dart';
import 'package:portafolio_flutter_mmmv/src/features/login/presentation/cubit/login_cubit.dart';
import 'package:provider/provider.dart';

part 'app.dart';

class BlocsProvider extends StatelessWidget {
  const BlocsProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<LoginCubit>(),
        ),
        ChangeNotifierProvider(
          create: (_) => getIt<LocaleProvider>(),
        ),
      ],
      child: App(),
    );
  }
}

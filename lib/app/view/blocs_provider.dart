import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portafolio_flutter_mmmv/src/core/l10n/l10n.dart';
import 'package:portafolio_flutter_mmmv/src/core/localization/localization.dart';
import 'package:portafolio_flutter_mmmv/src/core/routes/routes.dart';
import 'package:portafolio_flutter_mmmv/src/core/services/services.dart';
import 'package:provider/provider.dart';

part 'app.dart';

class BlocsProvider extends StatelessWidget {
  const BlocsProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<RouterCubit>(),
        ),
        ChangeNotifierProvider(
          create: (_) => getIt<LocaleProvider>(),
        ),
      ],
      child: const App(),
    );
  }
}

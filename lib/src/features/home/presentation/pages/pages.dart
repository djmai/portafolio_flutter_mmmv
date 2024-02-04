import 'package:flutter/material.dart';
import 'package:portafolio_flutter_mmmv/src/core/l10n/l10n.dart';
import 'package:portafolio_flutter_mmmv/src/core/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    // Idioma
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.homeAppBarTitle),
        centerTitle: true,
        actions: const <Widget>[
          LanguageDropdownWidget(),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context).homeAppBarTitle,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const LanguageListWidget(),
                ],
              ),
            ),
          ),
          const FooterCopyrightWidget(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portafolio_flutter_mmmv/src/core/l10n/l10n.dart';

class FooterCopyrightWidget extends StatelessWidget {
  const FooterCopyrightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Idioma
    final l10n = context.l10n;

    // Obtén la fecha actual
    final now = DateTime.now();

    // Obtén el año actual
    final currentYear = now.year;

    return Column(
      children: [
        Text(
          l10n.copyright(currentYear),
          style: Theme.of(context).textTheme.labelSmall,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          l10n.author,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Text(
          l10n.email_contact,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}

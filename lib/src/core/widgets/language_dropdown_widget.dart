import 'package:flutter/material.dart';
import 'package:portafolio_flutter_mmmv/src/core/constants/constants.dart';
import 'package:portafolio_flutter_mmmv/src/core/localization/localization.dart';
import 'package:provider/provider.dart';

class LanguageDropdownWidget extends StatelessWidget {
  const LanguageDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: DropdownButton<Language>(
        underline: const SizedBox(),
        icon: const Icon(
          Icons.language,
          color: Colors.white,
        ),
        onChanged: (Language? language) async {
          if (language != null) {
            final locale = Locale(language.languageCode);
            localeProvider.setLocale(locale);
          }
        },
        items: Language.languageList()
            .map<DropdownMenuItem<Language>>(
              (e) => DropdownMenuItem<Language>(
                value: e,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    if (localeProvider.locale.languageCode == e.languageCode)
                      const Icon(Icons.check, color: Colors.blue)
                    else
                      const Icon(Icons.language, color: Colors.grey),
                    Text(
                      e.flag,
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(e.name),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

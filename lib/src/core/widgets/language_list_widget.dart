import 'package:flutter/material.dart';
import 'package:portafolio_flutter_mmmv/src/core/constants/constants.dart';
import 'package:portafolio_flutter_mmmv/src/core/localization/localization.dart';
import 'package:provider/provider.dart';

class LanguageListWidget extends StatelessWidget {
  const LanguageListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Language.languageList().length,
        itemBuilder: (context, index) {
          final language = Language.languageList()[index];

          return Card(
            elevation: 1,
            margin: const EdgeInsets.all(8),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side: BorderSide(
                color:
                    localeProvider.locale.languageCode == language.languageCode
                        ? Colors.blue
                        : Colors.grey,
              ),
            ),
            child: ListTile(
              key: ValueKey(language.languageCode),
              contentPadding: const EdgeInsets.all(8),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              subtitleTextStyle: Theme.of(context).textTheme.bodySmall,
              onTap: () {
                final locale = Locale(language.languageCode);
                localeProvider.setLocale(locale);
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(language.name),
                ],
              ),
              selectedColor: Theme.of(context).primaryColor,
              selected:
                  localeProvider.locale.languageCode == language.languageCode,
              subtitle: Text(
                language.languageCode,
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                textWidthBasis: TextWidthBasis.longestLine,
                textHeightBehavior: const TextHeightBehavior(),
                locale: localeProvider.locale,
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(language.flag),
              ),
              leading:
                  localeProvider.locale.languageCode == language.languageCode
                      ? const Icon(Icons.check)
                      : const Icon(Icons.language),
              dense: true,
              visualDensity: VisualDensity.compact,
            ),
          );
        },
      ),
    );
  }
}

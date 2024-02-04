import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:shared_preferences/shared_preferences.dart';

const String languageCode = 'languageCode';

//languages code
const String english = 'en';
const String spanish = 'es';

Future<Locale> setLocale({String langCode = 'en'}) async {
  // final prefs = await SharedPreferences.getInstance();
  // await prefs.setString(LAGUAGE_CODE, languageCode);
  return _locale(langCode);
}

Future<Locale> getLocale() async {
  // final prefs = await SharedPreferences.getInstance();
  // final languageCode = prefs.getString(LAGUAGE_CODE) ?? ENGLISH;
  // return _locale(languageCode);
  return _locale(english);
}

Locale _locale(String langCode) {
  switch (langCode) {
    case english:
      return const Locale(english, '');
    case spanish:
      return const Locale(spanish, '');
    default:
      return const Locale(english, '');
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context);
}

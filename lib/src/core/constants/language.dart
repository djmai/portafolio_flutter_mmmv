class Language {
  Language(this.id, this.flag, this.name, this.languageCode);

  final int id;
  final String flag;
  final String name;
  final String languageCode;

  static List<Language> languageList() {
    return <Language>[
      Language(1, '🇺🇸', 'English', 'en'),
      Language(2, '🇪🇸', 'Español', 'es'),
    ];
  }
}

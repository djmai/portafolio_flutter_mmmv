# Portafolio Flutter - MMMV

### [MTIE. Miguel Martínez][link_tree_link]

<img src="./assets/img/logo_github.png" width="300px" align="right" alt="logo_app"/>

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Aplicación base generada con [Very Good CLI][very_good_cli_link] 🤖

Portafolio de practicas de Flutter para aumentar el desempeño del desarrollo de dichas aplicaciones

---

## Guía de introducción🚀

Este proyecto contiene 3 sabores:

- development
- staging
- production

Para ejecutar la versión deseada, utilice la configuración de inicio en VSCode/Android Studio o utilice los siguientes comandos:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Portafolio Flutter MMMV funciona en iOS, Android, Web y Windows._

---

## Ejecución de pruebas 🧪

Para ejecutar todas las pruebas unitarias y de widgets, utilice el siguiente comando:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

Para ver el informe de cobertura generado puede utilizar [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Trabajar con traducciones 🌐

Este proyecto se basa en [flutter_localizations][flutter_localizations_link] y sigue la [guía oficial de internacionalización de Flutter][internationalization_link].

### Adding Strings

1. Para agregar una nueva cadena localizable, abra el archivo `app_en.arb` en `lib/src/core/l10n/arb/app_en.arb`.

```arb
{
  "@@locale": "en",
  "homeAppBarTitle": "Home Page",
  "@homeAppBarTitle": {
    "description": "Text shown in the AppBar of the Home Page"
  }
}
```

2. Luego agregue una nueva clave/valor y una descripción.

```arb
{
  "@@locale": "es",
  "homeAppBarTitle": "Página de Inicio",
  "@homeAppBarTitle": {
    "description": "Texto mostrado en la AppBar de la página de inicio"
  }
}
```

3. Usa la nueva cadena

```dart
import 'package:portafolio_flutter_mmmv/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Agregar configuraciones regionales admitidas

Actualice la matriz `CFBundleLocalizations` en `Info.plist` en `ios/Runner/Info.plist` para incluir la nueva configuración regional.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>es</string>
	</array>

    ...
```

### Agregar traducciones

1. Para cada configuración regional compatible, agregue un nuevo archivo ARB en `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

2. Agregue las cadenas traducidas a cada archivo `.arb`:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_es.arb`

```arb
{
    "@@locale": "es",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```

### Generando traducciones

Para utilizar los últimos cambios de traducción, deberá generarlos:

1. Generar localizaciones para el proyecto actual:

```sh
flutter gen-l10n --arb-dir="lib/l10n/arb"
```

Alternativamente, ejecute `flutter run` y la generación de código se realizará automáticamente.

## Autores ✒️

_Nuestros colaboradores hasta el momento_

- **MTIE. Miguel Martinez** - [GitHub][github_link] - [Telegram][telegram_link] - [LinkedIn][linkedin_link]

## Gratitud 🎁

No olvides dejar tu estrellita y un watch para recibir cambios en futuras actualizaciones y sobre todo compartir con tus amigos y conocidos

¡Estamos aquí para ayudarte y mejorar nuestra aplicación!

⌨️ con ❤️ por [MTIE. Miguel Martinez][link_tree_link] 😊

[![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white)][youtube_link]

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://pub.dev/packages/very_good_cli
[link_tree_link]: https://linktr.ee/eltresm
[github_link]: https://github.com/djmai
[telegram_link]: https://t.me/mmartinezdev
[linkedin_link]: https://linkedin.com/in/mmartinezdev
[youtube_link]: https://www.youtube.com/@ElTresM


import 'package:get/get.dart';

/// For language code: `http://lingoes.net/en/translator/langcode.htm`
/// For language code: `https://www.science.co.il/language/Codes.php`

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'logged_in': 'Logged in as: @name \n Email: @email'
        },
        'bn_BN': {
          'hello': 'ওহে বিশ্ব',
          'logged_in': 'এই নামে লগ-ইন করাঃ @name \n ই-মেইল: @email'
        },
        'es_ES': {
          'hello': 'Hola Mundo',
          'logged_in': 'Iniciado sesión como: @name \n E-mail: @email'
        },
        'de_DE': {
          'hello': 'Hallo Welt',
          'logged_in': 'Eingeloggt als: @name \n Email: @email'
        },
      };
}

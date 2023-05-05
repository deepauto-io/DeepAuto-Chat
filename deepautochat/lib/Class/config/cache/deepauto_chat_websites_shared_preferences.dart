import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

import '../translations/deepauto_chat_website_globalization_service.dart';

class DeepautoChatWebsiteSharedPreferences {
  static late final SharedPreferences _preferenceManager;
  static init() async {
    _preferenceManager = await SharedPreferences.getInstance();
  }

  static const String _currentLocalKey = 'deepautochat_website_current_local';
  static const String _lightThemeKey = 'deepautochat_website_is_theme_light';

  /// set theme current type as light theme
  static void setThemeIsLight(bool lightTheme) =>
      _preferenceManager.setBool(_lightThemeKey, lightTheme);

  /// get if the current theme type is light
  static bool getThemeIsLight() =>
      _preferenceManager.getBool(_lightThemeKey) ?? false;

  /// save current locale
  static void setCurrentLanguage(String languageCode) =>
      _preferenceManager.setString(_currentLocalKey, languageCode);

  /// get current locale
  static Locale getCurrentLocal() {
    String? langCode = _preferenceManager.getString(_currentLocalKey) ?? "";
    // default language is english
    if (langCode.isEmpty) {
      return DeepautoChatWebsitesGlobalizationService.defaultLanguage;
    }
    return DeepautoChatWebsitesGlobalizationService
        .supportedLanguages[langCode]!;
  }
}

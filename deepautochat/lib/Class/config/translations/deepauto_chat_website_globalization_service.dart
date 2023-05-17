import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../cache/deepauto_chat_websites_shared_preferences.dart';
import 'deepauto_chat_website_en_US/deepauto_chat_website_en_us_translation.dart';
import 'deepauto_chat_website_zh_cn/deepauto_chat_website_zh_translation.dart';

class DeepautoChatWebsitesGlobalizationService extends Translations {
  static Locale defaultLanguage = Get.deviceLocale!;

  // supported languages
  static Map<String, Locale> supportedLanguages = {
    'en': const Locale('en', 'US'),
    'zh': const Locale('zh', 'CN'),
  };

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('zh', 'CN'),
  ];

  static const fallbackLocale = Locale('en');

  // supported languages fonts family (must be in logo & pubspec yaml) or you can use google fonts
  static Map<String, String?> supportedLanguagesFontsFamilies = {
    'en': GoogleFonts.robotoMono().fontFamily,
    'zh': GoogleFonts.robotoMono().fontFamily,
  };

  static Map<String, TextTheme> supportedLanguagesTextTheme = {
    'en': GoogleFonts.robotoMonoTextTheme(),
    'zh': GoogleFonts.robotoMonoTextTheme(),
  };

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'zh_CN': zhCN,
      };

  /// check if the language is supported
  static isLanguageSupported(String languageCode) =>
      supportedLanguages.keys.contains(languageCode);

  /// update app language by code language for example (en..etc)
  static updateLanguage(String languageCode) async {
    // check if the language is supported
    if (!isLanguageSupported(languageCode)) return;
    // update current language in shared pref

    DeepautoChatWebsiteSharedPreferences.setCurrentLanguage(languageCode);
    await Get.updateLocale(supportedLanguages[languageCode]!);
  }

  /// check if the language is english
  static bool isItEnglish() =>
      DeepautoChatWebsiteSharedPreferences.getCurrentLocal()
          .languageCode
          .toLowerCase()
          .contains('en');

  /// get current locale
  static Locale getCurrentLocal() =>
      DeepautoChatWebsiteSharedPreferences.getCurrentLocal();
}

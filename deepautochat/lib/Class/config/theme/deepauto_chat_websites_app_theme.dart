import 'package:flutter/material.dart';
import '../translations/deepauto_chat_website_globalization_service.dart';

class DeepautoChatWebsiteAppTheme {
  static ThemeData basic(
    BuildContext context,
  ) {
    return ThemeData(
      canvasColor: const Color(0xFFF9FAFE),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      primaryColor: Colors.white,
      dividerColor: const Color(0xFFD9DFFD),
      textTheme:
          DeepautoChatWebsitesGlobalizationService.supportedLanguagesTextTheme[
              DeepautoChatWebsitesGlobalizationService.getCurrentLocal()
                  .languageCode],
      fontFamily: DeepautoChatWebsitesGlobalizationService
              .supportedLanguagesFontsFamilies[
          DeepautoChatWebsitesGlobalizationService.getCurrentLocal()
              .languageCode],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lib_utils/config/app_build_config.dart';
import '../../config/theme/deepauto_chat_websites_app_theme.dart';
import '../../config/translations/deepauto_chat_website_globalization_service.dart';
import '../../config/deepauto_chat_websites_intialbinding.dart';
import '../../routers/deepauto_chat_websites_pages_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DeepautoChatWebsitesRootPage extends StatefulWidget {
  const DeepautoChatWebsitesRootPage({Key? key}) : super(key: key);

  @override
  State<DeepautoChatWebsitesRootPage> createState() =>
      _DeepautoChatWebsitesRootPageState();
}

class _DeepautoChatWebsitesRootPageState
    extends State<DeepautoChatWebsitesRootPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1100, 750),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: "Deepauto Chat",
            initialRoute: DeepautoChatWebsitesPagesRouter.initial,
            initialBinding: DeepautoChatWebsitesBinding(),
            getPages: DeepautoChatWebsitesPagesRouter.routes,
            locale: DeepautoChatWebsitesGlobalizationService
                .defaultLanguage, // app language
            translations: DeepautoChatWebsitesGlobalizationService(),
            fallbackLocale:
                DeepautoChatWebsitesGlobalizationService.fallbackLocale,
            supportedLocales:
                DeepautoChatWebsitesGlobalizationService.supportedLocales,
            localizationsDelegates: const [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            useInheritedMediaQuery: true,
            theme: DeepautoChatWebsiteAppTheme.basic(context),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

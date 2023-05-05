import 'package:flutter/material.dart';
import 'Class/config/cache/deepauto_chat_websites_shared_preferences.dart';
import 'Class/pages/root/deepauto_chat_root_page.dart';
import 'package:lib_utils/lib_utils.dart';

Future<void> main() async {
  APPEnvConfig devConfig = APPEnvConfig(
    baseUrl: "http://127.0.0.1",
    shouldCollectCrashLog: true,
  );
  APPBuildConfig.instantiate(
    envType: APPEnvironment.release,
    envConfig: devConfig,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await DeepautoChatWebsiteSharedPreferences.init();
  runApp(const DeepautoChatWebsitesRootPage());
}

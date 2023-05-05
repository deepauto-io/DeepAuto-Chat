import 'package:get/get.dart';
import '../pages/home/deepauto_chat_home_page.dart';
import '../pages/root/deepauto_chat_root_bindings.dart';
import 'deepauto_chat_websites_pages_routers_name.dart';

class DeepautoChatWebsitesPagesRouter {
  DeepautoChatWebsitesPagesRouter._();
  static const initial = GeniusesAIWebsitesPagesRouterNames.main;
  static final routes = [
    GetPage(
        name: GeniusesAIWebsitesPagesRouterNames.main,
        page: () => DeepautoChatWebsitesHomePage(),
        binding: DeepautoChatWebsitesRootPageControllerBinding()),
  ];
}

import 'package:flutter/cupertino.dart';

import 'deepauto_chat_home_desktop_home_page_banner.dart';
import 'deepauto_chat_home_desktop_menu_bar.dart';
import 'deepauto_chat_home_page_title.dart';

class DeepautoChatHomeDesktopPageTop extends StatelessWidget {
  const DeepautoChatHomeDesktopPageTop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color(0xffffffff),
      height: height,
      child: Column(
        children: const [
          DeepautoChatHomeDesktopMenuBar(),
          DeepautoChatHomePageTitle(),
          Expanded(child: DeepautoChatHomeDesktopHomePageBanner())
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

import 'deepauto_chat_home_mobile_banner.dart';
import 'deepauto_chat_home_mobile_menu_bar.dart';
import 'deepauto_chat_home_mobile_page_title.dart';

class DeepautoChatHomeMobilePageTop extends StatelessWidget {
  const DeepautoChatHomeMobilePageTop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color(0xffffffff),
      height: height,
      child: Column(
        children: const [
          DeepautoChatHomeMobileMenuBar(),
          DeepautoChatHomePageMobileTitle(),
          Expanded(child: DeepautoChatHomeDesktopHomePageMobileBanner())
        ],
      ),
    );
  }
}

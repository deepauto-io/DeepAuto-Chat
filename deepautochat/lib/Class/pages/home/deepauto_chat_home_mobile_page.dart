import 'package:flutter/cupertino.dart';

import 'mobile/deepauto_chat_home_mobile_page_bottom.dart';
import 'mobile/deepauto_chat_home_mobile_page_top.dart';

class DeepautoChatHomeMobilePage extends StatelessWidget {
  const DeepautoChatHomeMobilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DeepautoChatHomeMobilePageTop(),
          DeepautoChatHomeMobilePageBottom()
        ],
      ),
    );
  }
}

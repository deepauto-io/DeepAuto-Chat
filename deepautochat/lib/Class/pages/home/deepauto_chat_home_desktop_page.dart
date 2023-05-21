import 'package:flutter/material.dart';

import 'deepauto_chat_home_desktop_page_bottom.dart';
import 'deepauto_chat_home_desktop_page_top.dart';

class DeepautoChatHomeDesktopPage extends StatefulWidget {
  const DeepautoChatHomeDesktopPage({Key? key}) : super(key: key);
  @override
  State<DeepautoChatHomeDesktopPage> createState() =>
      _DeepautoChatHomeDesktopPageState();
}

class _DeepautoChatHomeDesktopPageState
    extends State<DeepautoChatHomeDesktopPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DeepautoChatHomeDesktopPageTop(),
          DeepautoChatHomeDesktopPageBottom()
        ],
      ),
    );
  }
}

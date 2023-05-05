import 'package:flutter/cupertino.dart';

import '../deepauto_chat_url_unit.dart';

class DeepautoChatHomePrivacyModel {
  final String title;
  final GestureTapCallback? onTap;
  DeepautoChatHomePrivacyModel({required this.title, required this.onTap});

  static var getItems = [
    DeepautoChatHomePrivacyModel(
        title: "Privacy Policy",
        onTap: () {
          DeepautoChatURLUnit.openPrivacyPolicy();
        }),
    // WPWSHomePrivacyModel(
    //     title: "Terms",
    //     onTap: () {
    //       WPWSURLUnit.openPrivacyPolicy();
    //     }),
    DeepautoChatHomePrivacyModel(
        title: "Feature Requests",
        onTap: () {
          DeepautoChatURLUnit.openIssues();
        }),
    DeepautoChatHomePrivacyModel(
        title: "Discussions",
        onTap: () {
          DeepautoChatURLUnit.openDiscussions();
        }),
    DeepautoChatHomePrivacyModel(
        title: "Email",
        onTap: () {
          DeepautoChatURLUnit.openMailto();
        })
  ];
}

import 'package:lib_utils/utils_url_launcher/untils_url_launcher.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class DeepautoChatURLUnit {
  static openGithub() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://github.com/deepauto-io"));
  }

  static openTwitter() {
    UrlLauncherUtil.openLauncherUtil(Uri.parse("https://twitter.com/etcdwp"));
  }

  static openAPPStore() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://apps.apple.com/cn/app/id6448849923"));
  }

  static openDownloader() {
    UrlLauncherUtil.openLauncherUtil(Uri.parse(
        "https://github.com/workpieces/etcdwp/releases/download/v2.0.1/etcdwp.dmg"));
  }

  static openIssues() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://github.com/deepauto-io/DeepAuto-Chat/issues"));
  }

  static openDiscussions() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://github.com/deepauto-io/DeepAuto-Chat/discussions"));
  }

  static openMailto() async {
    final mailtoLink = Mailto(
      to: ["workpieces.app@gmail.com"],
      cc: [""],
      subject: "feedback",
    );
    await launch('$mailtoLink');
  }

  static openPrivacyPolicy() {
    UrlLauncherUtil.openLauncherUtil(Uri.parse(
        "https://github.com/deepauto-io/DeepAuto-Chat/wiki/privacy-en"));
  }

  static openProducthunt() {
    UrlLauncherUtil.openLauncherUtil(
        Uri.parse("https://www.producthunt.com/posts/deepauto-chat-ai"));
  }
}

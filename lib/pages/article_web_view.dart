import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_scaffold.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  const ArticleWebView({super.key, required this.url});

  static const routeName = '/article_web';

  final String url;

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()..loadRequest(Uri.parse(url));
    return CustomScaffold(body: WebViewWidget(controller: controller,));
  }
}
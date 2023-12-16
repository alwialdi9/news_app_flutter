import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/styles.dart';
import 'package:news_app/pages/article_list_page.dart';
import 'package:news_app/widgets/platform_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = '/home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlatformWidget(androidBuilder: _buildAndroid, iosBuilder: _buildIos),
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return const Scaffold(
      body: ArticleListPage(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return const CupertinoPageScaffold(
      child: ArticleListPage()
    );
  }
}
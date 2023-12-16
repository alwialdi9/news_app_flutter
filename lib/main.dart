import 'package:flutter/material.dart';
import 'package:news_app/data/models/article.dart';
import 'package:news_app/pages/article_detail_page.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/styles.dart';
import 'package:news_app/pages/article_web_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0),
        textTheme: myTextTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: secondaryColor,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            )
          )
        ),
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: primaryColor,
          onPrimary: Colors.black,
          secondary: secondaryColor
        )
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (contexts) => const HomePage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(article: ModalRoute.of(context)?.settings.arguments as Article),
        ArticleWebView.routeName:(context) => ArticleWebView(url: ModalRoute.of(context)?.settings.arguments as String),
      },
    );
  }
}
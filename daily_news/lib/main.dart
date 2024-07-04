import 'package:daily_news/screen/detail_screen.dart';
import 'package:daily_news/screen/main_screen.dart';
import 'package:daily_news/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily News',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/main': (context) => MainScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          dynamic newsItem = settings.arguments as dynamic;
          return MaterialPageRoute(builder: (context) {
            return DetailScreen(newsItem: newsItem);
          },);
        }
      },
    );
  }
}

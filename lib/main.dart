import 'package:flutter/material.dart';
import 'package:moviez_streaming/constant.dart';
import 'package:moviez_streaming/screens/home_screen.dart';
import 'package:moviez_streaming/screens/search_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moviez Streaming',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              secondary: secondaryColor,
            ),
        fontFamily: 'Avenir',
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => Home(),
        Search.routeName: (context) => const Search(),
      },
    );
  }
}

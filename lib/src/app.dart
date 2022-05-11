import 'package:flutter/material.dart';
import 'package:insta_story/src/ui/views/ListViewExample.dart';
import 'package:insta_story/src/ui/views/card_example.dart';
import 'package:insta_story/src/ui/views/home.dart';
import 'package:insta_story/src/ui/views/login.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: CardExample(),
    );
  }
}

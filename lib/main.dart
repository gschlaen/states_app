import 'package:flutter/material.dart';
import 'package:states_app/pages/page1_page.dart';
import 'package:states_app/pages/page2_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'page1',
      routes: {
        'page1': (_) => const Page1Page(),
        'page2': (_) => const Page2Page(),
      },
    );
  }
}

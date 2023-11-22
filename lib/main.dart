import 'package:flutter/material.dart';
import 'package:flutter_demo_riverpod/screens/detail_screen.dart';
import 'package:flutter_demo_riverpod/screens/main_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 26, 124, 15)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        MyHomePage.routeName: (context) => const MyHomePage(),
        DetailScreen.routeName: (context) => const DetailScreen()
      },
    );
  }
}

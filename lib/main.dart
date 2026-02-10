import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'appstate.dart';
import 'darkmood.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: appState.isDarkMode ? Brightness.dark : Brightness.light,
        primarySwatch: Colors.green,
      ),
      home: const DarkMood(),
    );
  }
}


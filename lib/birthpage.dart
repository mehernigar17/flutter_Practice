import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../appstate.dart';
import '../appdrawer.dart';

class BirthPage extends StatelessWidget {
  const BirthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
      //drawer: AppDrawer(appState: appState),
      drawer: const AppDrawer(),

      backgroundColor:
      appState.isDarkMode ? Colors.black : const Color(0xffeefaf6),
      appBar: AppBar(
        title: Text(
          appState.isBangla ? "জন্ম নিবন্ধন" : "Birth Certificate",
        ),
        backgroundColor:
        appState.isDarkMode ? Colors.black : const Color(0xffeefaf6),
        iconTheme: IconThemeData(
          color: appState.isDarkMode ? Colors.white : Colors.black,
        ),
        elevation: 0,
      ),
      body: Center(
        child: Text(
          appState.isBangla
              ? "জন্ম নিবন্ধন সেবা পেইজ"
              : "Birth Certificate Service Page",
          style: TextStyle(
            fontSize: 18,
            color: appState.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../appstate.dart';
import '../appdrawer.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

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
          appState.isBangla
              ? "এসএসসি / এইচএসসি"
              : "SSC / HSC Certificate",
        ),
        backgroundColor:
        appState.isDarkMode ? Colors.black : const Color(0xffeefaf6),
      ),
      body: Center(
        child: Text(
          appState.isBangla
              ? "শিক্ষা সনদ যাচাই পেইজ"
              : "Education Verification Page",
        ),
      ),
    );
  }
}

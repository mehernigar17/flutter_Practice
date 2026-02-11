import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../appstate.dart';
import '../appdrawer.dart';

class NidPage extends StatelessWidget {
  const NidPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
     // drawer: AppDrawer(appState: appState),
      drawer: const AppDrawer(),

      backgroundColor:
      appState.isDarkMode ? Colors.black : const Color(0xffeefaf6),
      appBar: AppBar(
        title: Text(
          appState.isBangla ? "জাতীয় পরিচয়পত্র" : "National ID",
        ),
        backgroundColor:
        appState.isDarkMode ? Colors.black : const Color(0xffeefaf6),
        elevation: 0,
      ),
      body: Center(
        child: Text(
          appState.isBangla
              ? "এনআইডি সেবা পেইজ"
              : "National ID Services Page",
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'appstate.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appState.isBangla ? "সেটিংস" : "Settings"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: Text(appState.isBangla ? "ডার্ক মোড" : "Dark Mode"),
            value: appState.isDarkMode,
            onChanged: (value) {
              appState.setDarkMode(value);
            },
          ),
          SwitchListTile(
            title: const Text("বাংলা / English"),
            value: appState.isBangla,
            onChanged: (value) {
              appState.setLanguage(value);
            },
          ),
        ],
      ),
    );
  }
}

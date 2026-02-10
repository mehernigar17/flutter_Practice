import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'appstate.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<AppState>(
        builder: (context, appState, child) {
          return Container(
            color: appState.isDarkMode ? Colors.black : Colors.white,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  appState.isBangla ? "লগইন করুন" : "Login",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: appState.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: appState.isBangla ? "ইমেইল লিখুন" : "Enter email",
                    filled: true,
                    fillColor: appState.isDarkMode ? Colors.grey[800] : Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: TextStyle(
                    color: appState.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: appState.isBangla ? "পাসওয়ার্ড লিখুন" : "Enter password",
                    filled: true,
                    fillColor: appState.isDarkMode ? Colors.grey[800] : Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: TextStyle(
                    color: appState.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Login logic
                  },
                  child: Text(appState.isBangla ? "লগইন" : "Login"),
                ),
                const SizedBox(height: 20),
                // Language switch
                SwitchListTile(
                  title: Text(appState.isBangla ? "বাংলা / English" : "English / বাংলা"),
                  value: appState.isBangla,
                  onChanged: appState.setLanguage,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

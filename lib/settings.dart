
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'appstate.dart';

class SettingsBottomSheet {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Consumer<AppState>(
          builder: (context, appState, _) {
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: appState.isDarkMode
                    ? Colors.grey[900]
                    : Colors.white,
                borderRadius:
                const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      appState.isBangla ? "ডার্ক মোড" : "Dark Mode",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: appState.isDarkMode
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    value: appState.isDarkMode,
                    onChanged: (value) {
                      appState.setDarkMode(value);
                    },
                  ),

                  const SizedBox(height: 8),

                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      appState.isBangla
                          ? "বাংলা / English"
                          : "Bangla / English",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: appState.isDarkMode
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    value: appState.isBangla,
                    onChanged: (value) {
                      appState.setLanguage(value);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

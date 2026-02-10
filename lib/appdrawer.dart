import 'package:flutter/material.dart';
import 'appstate.dart';

class AppDrawer extends StatelessWidget {
  final AppState appState;

  const AppDrawer({super.key, required this.appState});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 60),
          _drawerItem(
            Icons.bar_chart,
            appState.isBangla ? "প্রগেস" : "Progress",
                () {},
          ),
          _drawerItem(
            Icons.report_problem,
            appState.isBangla ? "অভিযোগ" : "Complain",
                () {},
          ),
          const Divider(),
          _drawerItem(
            Icons.settings,
            appState.isBangla ? "সেটিংস" : "Settings",
                () {
              Navigator.pop(context);
              _openSettings(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _drawerItem(
      IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      onTap: onTap,
    );
  }

  void _openSettings(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SwitchListTile(
                title:
                Text(appState.isBangla ? "ডার্ক মোড" : "Dark Mode"),
                value: appState.isDarkMode,
                onChanged: appState.setDarkMode,
              ),
              SwitchListTile(
                title: const Text("বাংলা / English"),
                value: appState.isBangla,
                onChanged: appState.setLanguage,
              ),
            ],
          ),
        );
      },
    );
  }
}

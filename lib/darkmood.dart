import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'appstate.dart';
import 'appdrawer.dart';

class DarkMood extends StatelessWidget {
  const DarkMood({super.key});

  Widget categoryCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required double cardWidth,
    required bool isDarkMode,
  }) {
    return SizedBox(
      width: cardWidth,
      child: Container(
        height: 210,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[900] : Colors.lightGreen[900],
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: Colors.white, size: 26),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              style: TextStyle(fontSize: 13, color: Colors.grey[300]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    double screenWidth = MediaQuery.of(context).size.width;
    double spacing = 16;
    double cardWidth =
    screenWidth < 400 ? screenWidth - 32 : screenWidth / 2 - 24;

    return Scaffold(
      drawer: AppDrawer(appState: appState),
      backgroundColor:
      appState.isDarkMode ? Colors.black : const Color(0xffeefaf6),
      appBar: AppBar(
        backgroundColor:
        appState.isDarkMode ? Colors.black : const Color(0xffeefaf6),
        elevation: 0,
        iconTheme: IconThemeData(
          color: appState.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  appState.isBangla
                      ? "আপনার ক্যাটাগরি নির্বাচন করুন"
                      : "Select Your Category",
                  style: GoogleFonts.bungee(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.green[900],
                  ),
                ),
                const SizedBox(height: 28),
                Wrap(
                  spacing: spacing,
                  runSpacing: spacing,
                  children: [
                    categoryCard(
                      icon: Icons.description,
                      title: appState.isBangla
                          ? "জন্ম নিবন্ধন"
                          : "Birth Certificate",
                      subtitle: appState.isBangla
                          ? "জন্ম নিবন্ধন সনদ"
                          : "Apply for birth registration",
                      cardWidth: cardWidth,
                      isDarkMode: appState.isDarkMode,
                    ),
                    categoryCard(
                      icon: Icons.credit_card,
                      title: appState.isBangla
                          ? "জাতীয় পরিচয়পত্র"
                          : "National ID Card",
                      subtitle: appState.isBangla
                          ? "এনআইডি সেবা"
                          : "NID application & services",
                      cardWidth: cardWidth,
                      isDarkMode: appState.isDarkMode,
                    ),
                    categoryCard(
                      icon: Icons.flight,
                      title:
                      appState.isBangla ? "পাসপোর্ট" : "Passport",
                      subtitle: appState.isBangla
                          ? "পাসপোর্ট আবেদন"
                          : "Passport application & renewal",
                      cardWidth: cardWidth,
                      isDarkMode: appState.isDarkMode,
                    ),
                    categoryCard(
                      icon: Icons.school,
                      title: appState.isBangla
                          ? "এসএসসি / এইচএসসি"
                          : "HSC / SSC Certificate",
                      subtitle: appState.isBangla
                          ? "শিক্ষা সনদ যাচাই"
                          : "Educational certificate verification",
                      cardWidth: cardWidth,
                      isDarkMode: appState.isDarkMode,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

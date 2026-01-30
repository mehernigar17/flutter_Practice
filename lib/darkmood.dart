import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkMood extends StatefulWidget {
  const DarkMood({super.key});

  @override
  State<DarkMood> createState() => _DarkMoodState();
}

class _DarkMoodState extends State<DarkMood> {
  bool isSelected = false;

  Widget categoryCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 24,
      height: 210,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected ? Colors.grey[900] : Colors.white,
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
        //mainAxisSize: MainAxisSize.min,
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
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[600],
            ),
          ),
          //const SizedBox(height: 10),

          Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.arrow_forward,
              size: 18,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      isSelected ? Colors.black : const Color(0xffeefaf6),
      appBar: AppBar(
        backgroundColor:
        isSelected ? Colors.black : const Color(0xffeefaf6),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/image/nightmode.png',
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "Select Your Categoryy",
                  style: GoogleFonts.bungee(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.green[900],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Choose the service you need assistance with",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 28),

                /// 👇 WRAP ONLY (no wrapper)
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    categoryCard(
                      icon: Icons.description,
                      title: "Birth Certificate",
                      subtitle:
                      "Apply for birth registration certificate",
                    ),
                    categoryCard(
                      icon: Icons.credit_card,
                      title: "National ID Card",
                      subtitle: "NID application and services",
                    ),
                    categoryCard(
                      icon: Icons.flight,
                      title: "Passport",
                      subtitle:
                      "Passport application & renewal",
                    ),
                    categoryCard(
                      icon: Icons.school,
                      title: "HSC / SSC Certificate",
                      subtitle:
                      "Educational certificate verification",
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

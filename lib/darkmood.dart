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


  }){return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
        color: isSelected?Colors.grey[900]:Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            offset: const Offset(0,6),
          )
        ]
    ),
    child: Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(14)
          ),
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
              color: Colors.grey[600]
          ),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.bottomRight,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.green,
            size: 18,
          ),
        )


      ],
    ),

  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSelected?Colors.black:const  Color(0xffeefaf6),
      appBar: AppBar(

        backgroundColor: isSelected ? Colors.black :const  Color(0xffeefaf6),
        actions: [
          GestureDetector(
            onTap: (){
              setState(() {
                isSelected=!isSelected;
              });
            },
            child: Padding(padding:
            const EdgeInsetsGeometry.all(16),
              child:Image.asset('assets/image/nightmode.png'
                , width: 30,
                height: 30,
              ),

            ),



          )
        ],
      ),


      body: SafeArea(child:SingleChildScrollView(



      )),

      );

  }
}
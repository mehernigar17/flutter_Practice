import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkMood extends StatefulWidget {
  const DarkMood({super.key});

  @override
  State<DarkMood> createState() => _DarkMoodState();
}

class _DarkMoodState extends State<DarkMood> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: isSelected?Colors.black:Colors.white,
      appBar: AppBar(

        backgroundColor: isSelected ? Colors.black : Colors.white,
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


        body: Align(
          alignment: Alignment.topCenter,
          child:Padding(padding:const EdgeInsets.only(top: 22),



          child: Text("SELECT YOUR CATEGORY",
            style: GoogleFonts.bungee(

              fontSize: 24,
              fontWeight: FontWeight.w900,
              color:Colors.green[900],


            ),
          ),
        ),
    ),
    );
  }
}

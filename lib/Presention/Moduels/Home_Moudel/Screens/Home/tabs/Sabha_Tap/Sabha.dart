import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Core/assests_manger.dart';
import 'package:islame_project_session_6/Core/colors_manager.dart';

class Sabha extends StatelessWidget {
  const Sabha({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Wrapping Stack inside a SizedBox with finite height
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5, // Set the height for the Stack
            child: Stack(
              alignment: Alignment.center, // Aligns elements at the center
              children: [
                Positioned(
                  top: 20, // Adjust to move the header up or down
                  child: Image.asset(
                    AssestsImages.Sbha_Header,
                    width: MediaQuery.of(context).size.width * 0.2, // Adjusts the width relative to screen size
                    height: MediaQuery.of(context).size.height * 0.2, // Relative height
                  ),
                ),
                Positioned(
                  top: 100, // Adjust to move the body down
                  child: Image.asset(
                    AssestsImages.Sbha_Body,
                    width: MediaQuery.of(context).size.width * 0.6, // Relative width for better scaling
                    height: MediaQuery.of(context).size.height * 0.3, // Relative height
                  ),
                ),
              ],
            ),
          ),

          Text('عدد التسبيحات',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),) ,

          Container(
            alignment: Alignment.center,
            width: 40,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xFF)

            ),
            child: Text('30'),
          ),
          SizedBox(
            height: 20,
          ),
         ElevatedButton(onPressed: (){},

             style: ElevatedButton.styleFrom(

               backgroundColor: colorsManger.gold_color
             ),
             child:
         Text('سبحان الله',style: TextStyle(fontWeight: FontWeight.bold),

         ))
        ],
      ),
    );
  }
}


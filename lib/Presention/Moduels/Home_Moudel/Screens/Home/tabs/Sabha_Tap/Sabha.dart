import 'dart:io' show Platform;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Core/assests_manger.dart';
import 'package:islame_project_session_6/Core/colors_manager.dart';

class Sabha extends StatefulWidget {
  const Sabha({super.key});

  @override
  _SabhaState createState() => _SabhaState();
}

class _SabhaState extends State<Sabha> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int tasbihCount = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _incrementTasbih() {
    setState(() {
      tasbihCount += 1;
    });
    _controller.forward(from: 0.0); // Reset animation and start rotating
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                  child: RotationTransition(
                    turns: Tween(begin: 0.0, end: 1.0).animate(_controller), // Rotate on button press
                    child: Image.asset(
                      AssestsImages.Sbha_Body,
                      width: MediaQuery.of(context).size.width * 0.6, // Relative width for better scaling
                      height: MediaQuery.of(context).size.height * 0.3, // Relative height
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Text(
            'عدد التسبيحات',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),

          Container(
            alignment: Alignment.center,
            width: 40,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xFFB1914F), // Fixed color assignment
            ),
            child: Text('$tasbihCount'), // Displays current count
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: _incrementTasbih, // Calls increment function
            style: ElevatedButton.styleFrom(
              backgroundColor: colorsManger.gold_color, // Use your defined color
            ),
            child: const Text(
              'سبحان الله',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}



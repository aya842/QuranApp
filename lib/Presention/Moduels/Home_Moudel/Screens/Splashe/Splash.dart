import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Core/assests_manger.dart';
import 'package:islame_project_session_6/Core/route_manger.dart';

class Splashe extends StatelessWidget {
  const Splashe({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteManger.Home_route);
    });

    return Scaffold(
        body: Image.asset(
      AssestsImages.backgound_Splshe_light,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ));
  }
}
//can make tht logo witout backgoud with stack two imageassset

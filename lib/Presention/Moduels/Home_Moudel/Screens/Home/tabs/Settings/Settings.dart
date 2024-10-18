


import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Home/tabs/Settings/widget/ThemeButtonSheet.dart';

import 'widget/langueButtomSheet.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  @override
  Widget build(BuildContext context) {
    // The method body should be inside curly braces
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme', style: Theme.of(context).textTheme.labelMedium),
          SizedBox(height: 8),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Theme.of(context).dividerColor),
              ),
              child: Text('Light', style: Theme.of(context).textTheme.labelSmall),
            ),
          ),
          SizedBox(height: 16,),
          Text('Langue', style: Theme.of(context).textTheme.labelMedium),
          SizedBox(height: 8),
          InkWell(
            onTap: (){
              showButtomLanugeSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Theme.of(context).dividerColor),
              ),
              child: Text('English', style: Theme.of(context).textTheme.labelSmall),
            ),
          ),
        ],
      ),
    );
  }
  void showThemeBottomSheet( BuildContext context){
    showModalBottomSheet(context: context, builder:(context)=>ThemeButtonSheet());

  }
  void showButtomLanugeSheet(BuildContext context){
    showBottomSheet(context: context, builder: (context)=>LangueButtomSheet());
  }
}
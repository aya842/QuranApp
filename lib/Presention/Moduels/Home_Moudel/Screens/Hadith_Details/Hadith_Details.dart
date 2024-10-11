import 'package:flutter/material.dart';

import '../../../../../Core/assests_manger.dart';
import '../Home/tabs/Hadith/Headeath.dart';

class HadithDetailsScreen extends StatelessWidget {
  HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(AssestsImages.mainBgLight),
      )),
      child: Scaffold(
          appBar: AppBar(
            title: Text('QuranApp'),
          ),
          body: Card(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(hadith.title,
                      style: Theme.of(context).textTheme.titleMedium),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    color: Theme.of(context).indicatorColor,
                    width: double.infinity,
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(hadith.contant,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white)),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';

class HadithHeader extends StatelessWidget {
  const HadithHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: Theme.of(context).dividerColor))),
      child: Text(
        'Al:AHadith:',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

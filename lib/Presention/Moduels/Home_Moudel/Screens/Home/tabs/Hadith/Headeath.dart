import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_project_session_6/Core/assests_manger.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Home/tabs/Hadith/HadithWidget/HadithHeader.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Home/tabs/Hadith/HadithWidget/Title_widget.dart';

class Headeah extends StatefulWidget {
   Headeah({super.key});

  @override
  State<Headeah> createState() => _HeadeahState();
}

class _HeadeahState extends State<Headeah> {
List<Hadith>HadithList=[];

  @override
  Widget build(BuildContext context) {
    if (HadithList.isEmpty) Read_Hadith_File();
    Read_Hadith_File();
    return Container(
      child: Column(
        children: [

          Expanded(
              flex:1,
      child: Image.asset(AssestsImages.Hadith_header_icon)),
        HadithHeader(),
          Expanded(
            flex: 3,
            child:
            HadithList.isEmpty?
            Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,)): ListView.separated(
                    itemBuilder: ((context, index) =>
                        TitleWidget(hadith: HadithList[index])
            ),
              separatorBuilder:(context,index)=> Divider(
                color: Theme.of(context).dividerColor,
                thickness: 8,
              ),
              itemCount: HadithList.length,),
          )
        ],
      ),

    );
  }

  void Read_Hadith_File() async {
    String fileContant = await rootBundle.loadString(
        'assets/files/ahadeth.txt');
    List<String>Hadith_ITem_List = fileContant.trim().split('#');
    for (int i = 0; i < Hadith_ITem_List.length; i++) {
      String Hadith_Item = Hadith_ITem_List[i];
      List<String>Hadith_Lines = Hadith_Item.trim().split('\n');
      String title = Hadith_Lines[0];
      Hadith_Lines.removeAt(0);
      String Contant = Hadith_Lines.join('\n');
      Hadith hadith=Hadith(title: title, contant: Contant);
      HadithList.add(hadith);
    }
    setState(() {

    });

  }
}
class Hadith{
   Hadith({required this.title,required this.contant});
 String title;
 String contant;
  }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_r/core/utils/images_manager.dart';
import 'package:islami_app_r/presentation/home/tabs/hasith_tap/widgets/hadithTitelWidget.dart';
import 'package:islami_app_r/presentation/home/tabs/hasith_tap/widgets/hadith_headar_name.dart';

class HadithTap extends StatefulWidget {
  HadithTap({super.key});

  static const String routeName = '/hadithDetails';
  @override
  State<HadithTap> createState() => _HadithTapState();
}

class _HadithTapState extends State<HadithTap> {
  List<HadithItem> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) readHadithFile();
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Image.asset(ImagesManager.hadithScreenLogo),
            ),
          ),
          HadithHeadarName(),
          Expanded(
            flex: 3,
            child: ListView.separated(
              separatorBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                color: Theme.of(context).dividerColor,
                height: 2,
              ),
              itemBuilder: (context, index) =>
                  Hadithtitelwidget(hadith: allHadithList[index]),
              itemCount: allHadithList.length,
            ),
          )
        ],
      ),
    );
  }

  void readHadithFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadithItemList = fileContent.split("#");
    for (var contenthaith in hadithItemList) {
      List<String> hadithLines = contenthaith.trim().split("\n");
      String titel = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join("\n");
      HadithItem hadith = HadithItem(content: content, titel: titel);
      allHadithList.add(hadith);
    }
    setState(() {});
  }
}

class HadithItem {
  String titel;
  String content;
  HadithItem({required this.content, required this.titel});
}

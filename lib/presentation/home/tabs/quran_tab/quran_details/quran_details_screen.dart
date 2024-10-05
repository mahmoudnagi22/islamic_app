import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_r/core/utils/images_manager.dart';
import 'package:islami_app_r/presentation/home/tabs/quran_tab/quran_details/quran_widget.dart';
import 'package:islami_app_r/presentation/home/tabs/quran_tab/widgets/quran_titel_widget/quran_titel_widget.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) readFile(args.index);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImagesManager.default_bg), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) =>
                    QuranWidget(verseItem: verses[index]),
                itemCount: verses.length,
              ),
      ),
    );
  }

  void readFile(int index) async {
    //print(index);
    String fileContent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    var fileLines = fileContent.split("\n");
    verses = fileLines;
    setState(() {});
  }
}

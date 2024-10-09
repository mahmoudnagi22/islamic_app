import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/images_manager.dart';
import 'package:islami_app_r/core/utils/stringes_manager.dart';
import 'package:islami_app_r/presentation/home/tabs/hasith_tap/hadith_tap.dart';
import 'package:islami_app_r/presentation/home/tabs/quran_tab/quran_tap.dart';
import 'package:islami_app_r/presentation/home/tabs/radoi_tap/radli_tap.dart';
import 'package:islami_app_r/presentation/home/tabs/setting_tap/setting_tap.dart';
import 'package:islami_app_r/presentation/home/tabs/tasbeh_tap/tasbeh_tap.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTap(),
    HadithTap(),
    TasbehTap(),
    RadliTap(),
    SettingTap(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagesManager.default_bg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringesManager.AppTitel),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
          ),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            iconSize: 35,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(ImagesManager.quranIcon),
                  ),
                  label: StringesManager.quranLabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(ImagesManager.hadithIcon),
                  ),
                  label: StringesManager.hadithLabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(ImagesManager.tasbehIcon),
                  ),
                  label: StringesManager.tasbehLabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(ImagesManager.radioIcon),
                  ),
                  label: StringesManager.radioLabel),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: StringesManager.settingLabel),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}

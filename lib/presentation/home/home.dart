import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_r/core/utils/images_manager.dart';
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
          title: Text(AppLocalizations.of(context)!.app_title),
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
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(ImagesManager.quranIcon),
                  ),
                  label: AppLocalizations.of(context)!.quran_tab),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(ImagesManager.hadithIcon),
                  ),
                label: AppLocalizations.of(context)!.hadith_tab,
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(ImagesManager.tasbehIcon),
                  ),
                label: AppLocalizations.of(context)!.tasbeh_tab,
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(ImagesManager.radioIcon),
                  ),
                label: AppLocalizations.of(context)!.radio_tab,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting_tab,
              ),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}

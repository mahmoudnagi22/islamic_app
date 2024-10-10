import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/images_manager.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode carrenTheme = ThemeMode.light;
  String carrenLanguage = "en";

  void changeAppTheme(ThemeMode newTheme) {
    if (carrenTheme == newTheme) return;
    carrenTheme = newTheme;
    notifyListeners();
  }

  String getBackgroundImage() {
    return carrenTheme == ThemeMode.light
        ? ImagesManager.default_bg
        : ImagesManager.dark_bg;
  }

  void changeAppLanguage(String newLanguage) {
    if (carrenLanguage == newLanguage) return;
    carrenLanguage = newLanguage;
    notifyListeners();
  }

  bool isAppLanguageEn() {
    return carrenLanguage == 'en';
  }

  bool isAppLanguageAr() {
    return carrenLanguage == 'ar';
    ;
  }
}

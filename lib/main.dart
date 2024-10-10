import 'package:flutter/material.dart';
import 'package:islami_app_r/my_app/my_app.dart';
import 'package:islami_app_r/provider/settings_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: MyApp()));
}

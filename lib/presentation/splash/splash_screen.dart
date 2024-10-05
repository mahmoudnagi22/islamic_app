import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/images_manager.dart';
import 'package:islami_app_r/core/utils/routes_manager.dart';
import 'package:islami_app_r/presentation/home/home.dart';
//import 'package:islami_app/core/utils/images_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesManager.routeName);
    });
    return Scaffold(
      body: Image.asset(
        ImagesManager.LigthSplashScreen,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}

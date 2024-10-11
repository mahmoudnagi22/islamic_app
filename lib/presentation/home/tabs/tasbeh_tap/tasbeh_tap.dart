import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/colors_manager.dart';
import 'package:islami_app_r/core/utils/stringes_manager.dart';

import 'widget/sebha_widget.dart';

class TasbehTap extends StatefulWidget {
  const TasbehTap({super.key});

  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
  int counter = 0;
  int counterzker = 0;
  List<String> azkar = [
    "بداية التسبيح",
    "سبحان الله",
    "الحمد لله",
    "الله أكبر"
  ];
  int currentIndex = 0;
  double rotationAngle = 0.0;

  void azkarCounter() {
    setState(() {
      if (counter == 0) {
        currentIndex = 0;
      }
      counter++;
      if (counter <= 33) {
        currentIndex = 1;
        if (counter == 33) {
          counterzker++;
          currentIndex = 2;
          counterzker = 0;
        } else {
          counterzker++;
        }
      } else if (counter >= 34 && counter < 67) {
        currentIndex = 2;
        if (counter == 66) {
          counterzker++;
          currentIndex = 3;
          counterzker = 0;
        } else {
          counterzker++;
        }
      } else if (counter >= 67 && counter < 101) {
        currentIndex = 3;
        if (counter == 100) {
          counterzker++;
          currentIndex = 0;
          counterzker = 0;
          counter = 0;
        } else {
          counterzker++;
        }
      }
      rotationAngle += 11;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                AnimatedRotation(
                  turns: rotationAngle / 360,
                  duration: Duration(milliseconds: 500),
                  child: SebhaWidget(),
                ),
                Container(
                  child: Text(
                    StringesManager.tasbehcounter,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 30,
                        ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: ColorsManager.goldeColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      '$counterzker',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: azkarCounter,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: ColorsManager.goldeColor,
                  ),
                  child: Text(
                    azkar[currentIndex],
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorsManager.bgColorQuranWidget,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

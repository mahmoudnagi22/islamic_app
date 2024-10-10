import 'package:flutter/material.dart';

import 'widget/sebha_widget.dart';

class TasbehTap extends StatefulWidget {
  const TasbehTap({super.key});

  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Image.asset("assets/images/head_sebha_logo.png"),
            //     Image.asset("assets/images/body_sebha_logo.png"),
            //   ],
            // ),
            SebhaWidget(),
          ],
        ),
      ),
    );
  }
}

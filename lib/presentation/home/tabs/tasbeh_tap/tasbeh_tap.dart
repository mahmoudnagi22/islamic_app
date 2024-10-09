import 'package:flutter/material.dart';

class TasbehTap extends StatelessWidget {
  const TasbehTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/head_sebha_logo.png"),
              Image.asset("assets/images/body_sebha_logo.png"),
            ],
          ),
        ],
      ),
    );
  }
}

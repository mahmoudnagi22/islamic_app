import 'package:flutter/material.dart';
import 'package:islami_app_r/core/utils/images_manager.dart';

class SebhaWidget extends StatelessWidget {
  const SebhaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.7,
          child: Image.asset(ImagesManager.bodySebha),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.17,
          left: 23,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Image.asset(ImagesManager.headSebha),
          ),
        ),
      ],
    );
  }
}

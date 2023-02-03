import 'package:flutter/material.dart';
import 'package:twitter_space_ui/helpers/colors.dart';

class SpaceSoundWave extends StatelessWidget {
  const SpaceSoundWave({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      child: Row(
          children: List.generate(
              5,
              (index) => Container(
                    margin: const EdgeInsets.only(left: 1, right: 1),
                    width: 3,
                    height: 10,
                    decoration: BoxDecoration(
                        color: TwitterColors.mainColor,
                        borderRadius: BorderRadius.circular(20)),
                  ))),
    );
  }
}

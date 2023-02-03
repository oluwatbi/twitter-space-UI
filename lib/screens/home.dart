import 'package:flutter/material.dart';
import 'package:twitter_space_ui/widgets/glowing_effect.dart';
import 'package:twitter_space_ui/widgets/space_modal.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: GlowingEffect(
        icon: Icons.mic_sharp,
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => const SpaceModal(),
          );
        },
        size: 40,
      )),
    );
  }
}

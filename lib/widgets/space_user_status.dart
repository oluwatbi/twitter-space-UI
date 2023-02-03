import 'package:flutter/material.dart';
import 'package:twitter_space_ui/helpers/colors.dart';
import 'package:twitter_space_ui/models/user_model.dart';
import 'package:twitter_space_ui/widgets/space_sound_wave.dart';

class SpaceUserStatus extends StatelessWidget {
  final UserModel userModel;
  const SpaceUserStatus({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return userModel.isSpeaking
        ? const SpaceSoundWave()
        : userModel.isMuted
            ? Container(
                margin: const EdgeInsets.only(right: 2),
                child: const Icon(
                  Icons.mic_off_outlined,
                  size: 15,
                  color: TwitterColors.mainOffColor,
                ),
              )
            : SizedBox();
  }
}

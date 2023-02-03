import 'package:flutter/material.dart';
import 'package:twitter_space_ui/helpers/utils.dart';
import 'package:twitter_space_ui/widgets/space_user.dart';

class SpaceConversation extends StatelessWidget {
  const SpaceConversation({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 4,
      childAspectRatio: 0.8,
      mainAxisSpacing: 40,
      children: List.generate(Utils.getUsers().length, (index) {
        var user = Utils.getUsers()[index];
        return SpaceUser(userModel: user);
      }),
    );
  }
}

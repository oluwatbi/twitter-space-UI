import 'package:flutter/material.dart';
import 'package:twitter_space_ui/widgets/space_conversation.dart';
import 'package:twitter_space_ui/widgets/space_footer.dart';
import 'package:twitter_space_ui/widgets/space_header.dart';
import 'package:twitter_space_ui/widgets/space_title.dart';

class SpaceModal extends StatelessWidget {
  const SpaceModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.height * 0.25,
      padding: const EdgeInsets.all(24),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SpaceHeader(),
          SpaceTitle(),
          SizedBox(height: 15),
          Expanded(child: SpaceConversation()),
          SpaceFooter(),
        ],
      ),
    );
  }
}

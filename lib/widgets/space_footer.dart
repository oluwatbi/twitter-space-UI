import 'package:flutter/material.dart';
import 'package:twitter_space_ui/helpers/colors.dart';

class SpaceFooter extends StatelessWidget {
  const SpaceFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Material(
            color: Colors.white.withOpacity(0.1),
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(50),
            child: InkWell(
              onTap: () {},
              highlightColor: Colors.white.withOpacity(0.1),
              splashColor: Colors.white.withOpacity(0.1),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Icon(Icons.mic_off_outlined, color: Colors.red),
              ),
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.people, color: Colors.white, size: 20),
              const SizedBox(width: 20),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.emoji_emotions_sharp,
                      color: Colors.white, size: 20)),
              const SizedBox(width: 20),
              Container(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: TwitterColors.mainColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.chat_bubble_outline_rounded,
                        color: Colors.white, size: 20),
                    SizedBox(width: 10),
                    Text(
                      '17',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

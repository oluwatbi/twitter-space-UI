import 'package:flutter/material.dart';

class SpaceHeader extends StatelessWidget {
  const SpaceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ),
        Row(
          children: const [
            Icon(Icons.share, color: Colors.white),
            SizedBox(width: 15),
            Icon(Icons.more_horiz, color: Colors.white),
            SizedBox(width: 15),
            Text('Leave',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                )),
          ],
        )
      ],
    );
  }
}
